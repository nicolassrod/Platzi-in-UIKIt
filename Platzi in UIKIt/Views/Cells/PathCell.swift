//
//  PathCell.swift
//  Platzi in UIKIt
//
//  Created by Nicolás A. Rodríguez on 6/12/20.
//  Copyright © 2020 Nicolás A. Rodríguez. All rights reserved.
//

import Foundation
import UIKit

class PathCell: UICollectionViewCell {
    let path = PathView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(path)
    }
    
    override func layoutSubviews() {
        path.translatesAutoresizingMaskIntoConstraints = false
        path.leftAnchor.constraint(equalToSystemSpacingAfter: self.leftAnchor, multiplier: 0).isActive = true
        path.rightAnchor.constraint(equalToSystemSpacingAfter: self.rightAnchor, multiplier: 0).isActive = true
        path.topAnchor.constraint(equalToSystemSpacingBelow: self.topAnchor, multiplier: 0).isActive = true
        path.bottomAnchor.constraint(equalToSystemSpacingBelow: self.bottomAnchor, multiplier: 0).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
