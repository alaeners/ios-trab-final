//
//  InitialViewController.swift
//  ios-trab-final
//
//  Created by Alaene Sousa on 16/11/21.
//

import Foundation
import UIKit

class InitialViewController: UIViewController {
    let viewModel: ViewModel
    let initialView: InitialView
    private let cellIdentifier = "cell"
    
    //temporario ate eu entender o que ta pegando
    private lazy var flowLayout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
        layout.itemSize = CGSize(width: 60, height: 60)
        return layout
    }()
    
    lazy var movieCollectionView: UICollectionView = {
        let collection = UICollectionView(frame: view.frame, collectionViewLayout: flowLayout)
        collection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellIdentifier)
        collection.backgroundColor = .white
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
        view.backgroundColor = .white
        view.addSubview(movieCollectionView)
//        initialView.addSubview(initialView.movieCollectionView)
//
//        initialView.onMovieTap = {
//            self.navigationController?.pushViewController(DetailViewController(), animated: true)
//        }
    }
}

extension InitialViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //pegar count de itens que vier da api
        return 5
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
