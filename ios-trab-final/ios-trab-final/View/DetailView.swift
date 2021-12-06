//
//  DetailView.swift
//  ios-trab-final
//
//  Created by Alaene Sousa on 16/11/21.
//

import Foundation
import UIKit

class DetailView: UIView {
    lazy var movieTitle: UILabel = {
        let title = UILabel()
        title.font = .boldSystemFont(ofSize: 24.0)
        title.backgroundColor = .red
        return title
    }()
    
    lazy var moviewStackViewH = UIStackView()
    lazy var moviewStackViewV = UIStackView()
    lazy var movieImage = UIImageView()
    lazy var movieYear = UILabel()
    lazy var movieRating = UILabel()
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
//        movieImage.image = properties.image
//        movieYear.text = properties.year
//        movieRating.text = properties.rating
//        movieDescription.text = properties.description
    }
    
    private func setupViews() {
        clipsToBounds = true
        movieImage.layer.cornerRadius = 4.0
        backgroundColor = .white
        addSubview(movieTitle)
//        addSubview(moviewStackViewH)
//        moviewStackViewH.addSubview(movieImage)
//        moviewStackViewH.addSubview(moviewStackViewV)
//        moviewStackViewV.addSubview(movieYear)
//        moviewStackViewV.addSubview(movieRating)
//        addSubview(movieDescription)
    }
    
    private func setupLayouts() {
        movieTitle.translatesAutoresizingMaskIntoConstraints = false
//        movieImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
//            movieTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
//            movieTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 16.0),
            movieTitle.topAnchor.constraint(equalTo: topAnchor, constant: 16.0),
            movieTitle.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 16.0),
            movieTitle.leftAnchor.constraint(equalTo: leftAnchor, constant: 16.0),
            movieTitle.rightAnchor.constraint(equalTo: rightAnchor, constant: 16.0)
        ])
        
//        NSLayoutConstraint.activate([
//            movieImage.leadingAnchor.constraint(equalTo: leadingAnchor),
//            movieImage.trailingAnchor.constraint(equalTo: trailingAnchor),
//            movieImage.topAnchor.constraint(equalTo: topAnchor),
//            movieImage.heightAnchor.constraint(equalToConstant: 300)
//        ])
    }
}
