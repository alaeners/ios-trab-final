//
//  InitialCollectionViewCell.swift
//  ios-trab-final
//
//  Created by Alaene Sousa on 16/11/21.
//

import Foundation
import UIKit

protocol ReusableView: AnyObject {
    static var identifier: String { get }
}

extension InitialCollectionViewCell: ReusableView {
    static var identifier: String {
        return String(describing: self)
    }
}

class InitialCollectionViewCell: UICollectionViewCell {
    
    private enum Constants {
        // MARK: contentView layout constants
        static let contentViewCornerRadius: CGFloat = 4.0
        
        // MARK: movieImageView layout constants
        static let imageHeight: CGFloat = 300.0
    }
    
    private let movieImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .cyan
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupViews()
        setupLayouts()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func render(with properties: InitialCollectionViewCellProps) {
        let url = URL(string: properties.imageBasePath)
        if let data = try? Data(contentsOf: url!) {
          movieImageView.image = UIImage(data: data)
        }
    }
    
    private func setupViews() {
        contentView.clipsToBounds = true
        contentView.layer.cornerRadius = Constants.contentViewCornerRadius
        contentView.backgroundColor = .white
        contentView.addSubview(movieImageView)
    }
    
    private func setupLayouts() {
        movieImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Layout constraints for `movieImageView`
        NSLayoutConstraint.activate([
            movieImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            movieImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            movieImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            movieImageView.heightAnchor.constraint(equalToConstant: Constants.imageHeight)
        ])
    }
}
