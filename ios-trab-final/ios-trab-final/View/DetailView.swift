//
//  DetailView.swift
//  ios-trab-final
//
//  Created by Alaene Sousa on 16/11/21.
//

import Foundation
import UIKit

class DetailView: UIView {
    lazy var movieTitle = UILabel()
    lazy var movieImage = UIImageView()
    lazy var movieYear = UILabel()
    lazy var movieClass = UILabel()
    lazy var movieDescription = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupViews()
        setupLayouts()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func render(with properties: DetailViewProps) {
        movieTitle.text = properties.title
        movieImage.image = properties.image
        movieYear.text = properties.year
        movieDescription.text = properties.description
    }
    
    private func setupViews() {
        clipsToBounds = true
        movieImage.layer.cornerRadius = 4.0
        backgroundColor = .white
        addSubview(movieImage)
    }
    
    private func setupLayouts() {
        movieImage.translatesAutoresizingMaskIntoConstraints = false
        // Layout constraints for `movieImageView`
        NSLayoutConstraint.activate([
            movieImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            movieImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            movieImage.topAnchor.constraint(equalTo: topAnchor),
            movieImage.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
}
