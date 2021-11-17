//
//  ImageComponent.swift
//  ios-trab-final
//
//  Created by Alaene Sousa on 16/11/21.
//

import Foundation
import UIKit

class ImageComponent: UIView {
    var imageProps: ImageComponentProps
    let imageComponent = UIImageView()
    
    init(props: ImageComponentProps) {
        imageProps = props
        super.init(frame: .zero)
        render()
   }
    
    required public init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Render
    public func render() {
        setupView()
    }
    
    // MARK: - Private Methods
    private func setupView() {
        setupHierarchy()
        setupStyle()
        setupConstraints()
    }
    
    private func setupHierarchy() {
        addSubview(imageComponent)
    }
    
    private func setupStyle() {
        imageComponent.backgroundColor = imageProps.isDetailsPage ? .blue : .red
    }
    
    private func setupConstraints() {
        imageComponent
            .widthAnchor
            .constraint(equalToConstant: imageProps.isDetailsPage ? ImageConstants.extraLarge : ImageConstants.extraMedium)
            .isActive = true
        
        imageComponent
            .heightAnchor
            .constraint(equalToConstant: imageProps.isDetailsPage ? ImageConstants.bigger :  ImageConstants.large)
            .isActive = true
        
        imageComponent
            .topAnchor
            .constraint(equalTo: topAnchor, constant: ImageConstants.medium)
            .isActive = true
        
        imageComponent
            .bottomAnchor
            .constraint(equalTo: bottomAnchor, constant: ImageConstants.medium)
            .isActive = true
        
        imageComponent
            .leftAnchor
            .constraint(equalTo: leftAnchor, constant: ImageConstants.medium)
            .isActive = true
        
        imageComponent
            .rightAnchor
            .constraint(equalTo: rightAnchor, constant: ImageConstants.medium)
            .isActive = true
    }
    
    // MARK: - Constants
    private enum ImageConstants {
        static let medium = CGFloat(16.0)
        static let extraMedium = CGFloat(24.0)
        static let large = CGFloat(32.0)
        static let extraLarge = CGFloat(48.0)
        static let bigger = CGFloat(64.0)
    }
}
