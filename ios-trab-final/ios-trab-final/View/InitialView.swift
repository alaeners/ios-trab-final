//
//  InitialView.swift
//  ios-trab-final
//
//  Created by Alaene Sousa on 16/11/21.
//

import Foundation
import UIKit

class InitialView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource  {
    // MARK: - Public Properties
    public typealias MovieTap = () -> Void
    public var onMovieTap: MovieTap?
    
    // MARK: - Private Properties
    private let cellIdentifier = "cell"
    private var properties: InitialViewProps
    private lazy var movieImage = UIImage()
    private lazy var movieDescription = String()
    
    private lazy var flowLayout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 60, height: 60)
        return layout
    }()
    
    lazy var movieCollectionView: UICollectionView = {
        let collection = UICollectionView(frame: frame, collectionViewLayout: flowLayout)
        collection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellIdentifier)
        collection.backgroundColor = .gray
        collection.delegate = self
        collection.dataSource = self
        return collection
    }()
    
    init(properties: InitialViewProps) {
        self.properties = properties
        super.init(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Render
    public func render(properties: InitialViewProps) {
        setupView()
    }
    
    // MARK: - Constants
    private enum InitialViewConstants {
        static let numberOfLines = 0
    }
    
    // MARK: - Private Methods
    private func setupView() {
        setupHierarchy()
        setupStyle()
        setupConstraints()
    }
    
    private func setupHierarchy() {
        addSubview(movieCollectionView)
    }
    
    private func setupStyle() {}
    private func setupConstraints() {}
    
    @objc func goMovieDetails() {
        onMovieTap?()
    }
}

extension InitialView {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
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
