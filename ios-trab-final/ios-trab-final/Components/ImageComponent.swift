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
            .constraint(equalToConstant: imageProps.isDetailsPage ? 24.0 : 48.0)
            .isActive = true
        imageComponent
            .heightAnchor
            .constraint(equalToConstant: imageProps.isDetailsPage ? 32.0 : 64.0)
            .isActive = true
    }
    
    // MARK: - Constants
}
