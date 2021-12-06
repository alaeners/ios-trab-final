//
//  DetailViewController.swift
//  ios-trab-final
//
//  Created by Alaene Sousa on 16/11/21.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    var viewModel: ViewModel
    var movieID: String
    var detailsView = DetailView(properties: DetailViewProps())
    
    init(viewModel: ViewModel, movieID: String) {
        self.viewModel = viewModel
        self.movieID = movieID
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showMovieDetails()
    }
    
    private func configureView() {
        detailsView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(detailsView)
        detailsView.render(with: DetailViewProps())
        
        detailsView.topAnchor.constraint(equalTo: view.topAnchor, constant: 16.0).isActive = true
        detailsView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        detailsView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        detailsView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    }

    private func setupViews(properties: DetailViewProps) {
        navigationController?.navigationBar.tintColor = .black
        view.backgroundColor = .white
        detailsView.render(with: properties)
    }
    
    private func showMovieDetails() {
        viewModel.fetchMoviesPerID(movieID: movieID) { movieData, error in
            DispatchQueue.main.async { [weak self] in
                if error != nil  { self?.showError() }
                guard let safeSelf = self else { return }
                guard let safeData = movieData else { return }
                safeSelf.setupViews(properties: safeSelf.viewModel.getDetailsProps(moviePerID: safeData))
            }
        }
    }
    
    func showError() {
        let ac = UIAlertController(title: "Loading error", message: "There was a problem loading the feed; please check your connection and try again.", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(ac, animated: true)
        showMovieDetails()
    }
}
