//
//  PostCell.swift
//  Platzi in UIKIt
//
//  Created by Nicolás A. Rodríguez on 6/12/20.
//  Copyright © 2020 Nicolás A. Rodríguez. All rights reserved.
//

import Foundation
import UIKit

class PostCell: UICollectionViewCell {
    var post = PostView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(post)
    }
    
    override func layoutSubviews() {
        post.translatesAutoresizingMaskIntoConstraints = false
        post.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        post.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        post.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        post.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
