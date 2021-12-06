//
//  DetailView.swift
//  ios-trab-final
//
//  Created by Alaene Sousa on 16/11/21.
//

import Foundation
import UIKit

class DetailView: UIView {
    var properties: DetailViewProps
    lazy var movieTitle: UILabel = {
        let title = UILabel()
        title.font = .boldSystemFont(ofSize: 32.0)
        title.textColor = .white
        title.numberOfLines = 0
        title.textAlignment = .left
        title.lineBreakMode = .byWordWrapping
        return title
    }()
    
    lazy var movieImage: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var movieYear: UILabel = {
        let year = UILabel()
        year.font = .boldSystemFont(ofSize: 20.0)
        year.textColor = .white
        year.numberOfLines = 0
        year.textAlignment = .left
        return year
    }()
    
    lazy var movieRating: UILabel = {
        let rating = UILabel()
        rating.font = .systemFont(ofSize: 20.0)
        rating.textColor = .white
        rating.numberOfLines = 0
        rating.textAlignment = .left
        return rating
    }()
    
    lazy var movieDescription: UILabel = {
        let description = UILabel()
        description.font = .italicSystemFont(ofSize: 16.0)
        description.textColor = .white
        description.numberOfLines = 0
        description.textAlignment = .justified
        return description
    }()
    
    init(properties: DetailViewProps) {
        self.properties = properties
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
        movieYear.text = replaceOcurrence(text: properties.year)
        movieRating.text = properties.rating
        movieDescription.text = properties.description
    }
    
    func replaceOcurrence(text: String) -> String {
        let newText = text.dropLast(6)
        return String(newText)
    }
    
    private func setupViews() {
        clipsToBounds = true
        movieImage.layer.cornerRadius = 4.0
        backgroundColor = .black
        addSubview(movieTitle)
        addSubview(movieImage)
        addSubview(movieYear)
        addSubview(movieRating)
        addSubview(movieDescription)
    }
    
    private func setupLayouts() {
        movieTitle.translatesAutoresizingMaskIntoConstraints = false
        movieImage.translatesAutoresizingMaskIntoConstraints = false
        movieYear.translatesAutoresizingMaskIntoConstraints = false
        movieRating.translatesAutoresizingMaskIntoConstraints = false
        movieDescription.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            bottomAnchor.constraint(equalTo: bottomAnchor),
            
            movieTitle.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16.0),
//            movieTitle.leftAnchor.constraint(equalTo: leftAnchor, constant: 16.0),
            movieTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            movieTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0),

            movieImage.topAnchor.constraint(equalTo: movieTitle.bottomAnchor, constant: 32.0),
            movieImage.heightAnchor.constraint(equalToConstant: 300.0),
            movieImage.widthAnchor.constraint(equalToConstant: 200.0),
            movieImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 32.0),

            movieYear.topAnchor.constraint(equalTo: movieImage.topAnchor),
            movieYear.leftAnchor.constraint(equalTo: movieImage.rightAnchor, constant: 24.0),
            
            movieRating.topAnchor.constraint(equalTo: movieYear.bottomAnchor, constant: 8.0),
            movieRating.leftAnchor.constraint(equalTo: movieImage.rightAnchor, constant: 24.0),

            movieDescription.topAnchor.constraint(equalTo: movieImage.bottomAnchor, constant: 16.0),
            movieDescription.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            movieDescription.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0),
        ])
    }
}
