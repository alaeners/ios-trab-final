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
        view.backgroundColor = .green
        title = "Top Movies"
        setupViews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showMovieDetails(movieID: movieID)
    }

    private func setupViews() {
        navigationController?.navigationBar.tintColor = .black
        view.backgroundColor = .white
    }
    
    private func showMovieDetails(movieID: String) {
        viewModel.fetchMovies(movieID: movieID) { movieData, error in
            DispatchQueue.main.async { [weak self] in
                if error != nil  { self?.showError() }
                guard let safeSelf = self else { return }
                safeSelf.setupViews()
            }
        }
    }
    
    func showError() {
        let ac = UIAlertController(title: "Loading error",
                                   message: "There was a problem loading the feed; please check your connection and try again.",
                                   preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(ac, animated: true)
        showMovieDetails(movieID: movieID)
    }
}
