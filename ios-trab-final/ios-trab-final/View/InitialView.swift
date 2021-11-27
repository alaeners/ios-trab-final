//
//  InitialView.swift
//  ios-trab-final
//
//  Created by Alaene Sousa on 16/11/21.
//

import Foundation
import UIKit

class InitialView: UIView {
    lazy var movieImage = UIImage()
    lazy var movieDescription = String()
    lazy var movieCollectionView = UICollectionView()
    

    
    lazy var stackView: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .vertical
        sv.distribution = .fillEqually
        sv.addArrangedSubview(plainViewControllerButton)
        sv.addArrangedSubview(subclassedViewButton)
        return sv
    }()
    
    lazy var plainViewControllerButton: UIButton = {
       let bt = UIButton()
        bt.setTitle("Plain ViewController", for: .normal)
        bt.addTarget(self, action: #selector(goPlain), for: .touchDown)
        return bt
    }()
    
    lazy var subclassedViewButton: UIButton = {
        let bt = UIButton()
        bt.setTitle("Subclassed ViewController", for: .normal)
        bt.addTarget(self, action: #selector(goSubclass), for: .touchDown)
        return bt
    }()
    
    @objc func goPlain() {
//        self.navigationController?.pushViewController(DetaillViewController(), animated: true)
    }
    
    @objc func goSubclass() {
//        self.navigationController?.pushViewController(DetaillViewController(), animated: true)
    }

    func addConstraints() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(
                equalTo: safeAreaLayoutGuide.topAnchor),
            stackView.bottomAnchor.constraint(
                equalTo: safeAreaLayoutGuide.bottomAnchor),
            stackView.leadingAnchor.constraint(
                equalTo: safeAreaLayoutGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(
                equalTo: safeAreaLayoutGuide.trailingAnchor)
        ])
    }
    
}
