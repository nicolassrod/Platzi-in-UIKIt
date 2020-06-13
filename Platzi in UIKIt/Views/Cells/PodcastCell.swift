//
//  PodcastCell.swift
//  Platzi in UIKIt
//
//  Created by Nicolás A. Rodríguez on 6/12/20.
//  Copyright © 2020 Nicolás A. Rodríguez. All rights reserved.
//

import Foundation
import UIKit

class PodcastCell: UICollectionViewCell {
    var podcast = PodcastView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(podcast)
    }
    
    override func layoutSubviews() {
        podcast.translatesAutoresizingMaskIntoConstraints = false
        podcast.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        podcast.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        podcast.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        podcast.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
