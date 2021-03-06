//
//  InitialViewController.swift
//  ios-trab-final
//
//  Created by Alaene Sousa on 16/11/21.
//

import Foundation
import Alamofire
import UIKit

class InitialViewController: UIViewController {
    var viewModel: ViewModel
    
    private let loading: UIActivityIndicatorView = {
        let load = UIActivityIndicatorView()
        load.color = .red
        load.style = .large
        return load
    }()
    
    private let movieCollectionView: UICollectionView = {
        let viewLayout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: viewLayout)
        collectionView.backgroundColor = .black
        return collectionView
    }()
    
    private enum LayoutConstant {
        static let spacing: CGFloat = 0.0
        static let itemHeight: CGFloat = 300.0
    }
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Top Movies"
        navigationController?.navigationBar.tintColor = .black
        view.backgroundColor = .black
        setupViews()
        setupLayouts()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        populateMovies()
    }

    private func setupViews() {
        view.addSubview(movieCollectionView)
        movieCollectionView.addSubview(loading)
        
        movieCollectionView.dataSource = self
        movieCollectionView.delegate = self
        movieCollectionView.register(InitialCollectionViewCell.self,
                                     forCellWithReuseIdentifier: InitialCollectionViewCell.identifier)
    }
    
    private func setupLayouts() {
        movieCollectionView.translatesAutoresizingMaskIntoConstraints = false
        loading.translatesAutoresizingMaskIntoConstraints = false
        
        // Layout constraints for `collectionView`
        NSLayoutConstraint.activate([
            movieCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            movieCollectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            movieCollectionView.leftAnchor.constraint(equalTo: view.leftAnchor),
            movieCollectionView.rightAnchor.constraint(equalTo: view.rightAnchor)
        ])
        
        NSLayoutConstraint.activate([
            loading.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            loading.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
        ])
    }
    
    private func populateMovies() {
        loading.startAnimating()
        viewModel.fetchAllMovies { movieData, error in
            DispatchQueue.main.async { [weak self] in
                if error != nil  { self?.showError() }
                guard let safeSelf = self else { return }
                safeSelf.loading.stopAnimating()
                safeSelf.movieCollectionView.reloadData()
            }
        }
    }
    
    func showError() {
        let ac = UIAlertController(title: "Loading error",
                                   message: "There was a problem loading the feed; please check your connection and try again.",
                                   preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(ac, animated: true)
        populateMovies()
    }
}

extension InitialViewController: UICollectionViewDataSource {
   func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.setupAllMovies().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: InitialCollectionViewCell.identifier,
                                                      for: indexPath) as! InitialCollectionViewCell
        let imageModel =  viewModel.imageConverted(posterPath: viewModel.setupAllMovies()[indexPath.row].posterPath ?? "")
        let props = InitialCollectionViewCellProps(image: imageModel ?? UIImage())
        cell.render(with: props)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let movieID = String(viewModel.setupAllMovies()[indexPath.row].id ?? 0)
        let openDetailsMovie = DetailViewController(viewModel: viewModel, movieID: movieID)
        navigationController?.pushViewController(openDetailsMovie, animated: true)
        print("selected")
    }
}

extension InitialViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = itemWidth(for: view.frame.width, spacing: LayoutConstant.spacing)
        
        return CGSize(width: width, height: LayoutConstant.itemHeight)
    }
    
    func itemWidth(for width: CGFloat, spacing: CGFloat) -> CGFloat {
        let itemsInRow: CGFloat = 2
        
        let totalSpacing: CGFloat = 2 * spacing + (itemsInRow - 1) * spacing
        let finalWidth = (width - totalSpacing) / itemsInRow
        
        return floor(finalWidth)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: LayoutConstant.spacing, left: LayoutConstant.spacing, bottom: LayoutConstant.spacing, right: LayoutConstant.spacing)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return LayoutConstant.spacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return LayoutConstant.spacing
    }
}
