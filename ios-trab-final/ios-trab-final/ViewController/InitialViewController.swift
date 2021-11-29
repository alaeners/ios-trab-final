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
    let viewModel: ViewModel
    let initialView: InitialView
    private let cellIdentifier = "cell"
    private var widthCollection = CGFloat()
    private var heightCollection = CGFloat()
    
    //temporario ate eu entender o que ta pegando
    private lazy var flowLayout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0,
                                           left: 0,
                                           bottom: 0,
                                           right: 0)
        layout.minimumInteritemSpacing = 1
        layout.itemSize = CGSize(width: widthCollection,
                                 height: heightCollection)
        return layout
    }()
    
    lazy var movieCollectionView: UICollectionView = {
        let collection = UICollectionView(frame: view.frame, collectionViewLayout: flowLayout)
        collection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellIdentifier)
        collection.backgroundColor = .darkGray
        collection.delegate = self
        collection.dataSource = self
        return collection
    }()
    
    init(vm: ViewModel) {
        viewModel = vm
        initialView = InitialView(properties: viewModel.getInitialProps())
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupView()
    }
    
    func setupView() {
        view.backgroundColor = .gray
        title = "Top Movies"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        widthCollection = ((view.frame.size.width - 10)/2)
        heightCollection = (widthCollection * 1.5)
        view.addSubview(movieCollectionView)
        fetchData()
        
        
        //        view.addSubview(initialView)
        //
        //        initialView.onMovieTap = {
        //            self.navigationController?.pushViewController(DetailViewController(), animated: true)
        //        }
    }
    
    func fetchData() {
        viewModel.fetchMovies(movieID: "")
    }
}

extension InitialViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //        movies.count
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath)
        myCell.backgroundColor = .blue
        return myCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("User tapped on item \(indexPath.row)")
    }
}
