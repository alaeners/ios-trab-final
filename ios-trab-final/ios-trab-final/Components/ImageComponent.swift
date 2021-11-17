//
//  ImageComponent.swift
//  ios-trab-final
//
//  Created by Alaene Sousa on 16/11/21.
//

import Foundation
import UIKit

class ImageComponent: UIImageView {
    
    init(props: ImageComponentProps) {
        super.init(image: nil, highlightedImage: nil)
        render(props: props)
   }
    
    required public init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Render
    public func render(props: ImageComponentProps) { }
    
    // MARK: - Private Methods
    private func setupView() {
        setupHierarchy()
        setupStyle()
        setupConstraints()
    }
    
    private func setupHierarchy() { }
    
    private func setupStyle() { }
    
    private func setupConstraints() {  }
}
