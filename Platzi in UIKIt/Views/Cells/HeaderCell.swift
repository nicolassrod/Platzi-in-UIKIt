//
//  HeaderCell.swift
//  Platzi in UIKIt
//
//  Created by Nicolás A. Rodríguez on 6/12/20.
//  Copyright © 2020 Nicolás A. Rodríguez. All rights reserved.
//

import Foundation
import UIKit

class HeaderReusableCell: UICollectionReusableView {
    lazy var label: UILabel = {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.headline)
        label.textColor = .black
        return label
    }()
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Ver todo", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(label)
        addSubview(button)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.leftAnchor.constraint(equalToSystemSpacingAfter: self.leftAnchor, multiplier: 0.6).isActive = true
        label.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.rightAnchor.constraint(equalToSystemSpacingAfter: self.rightAnchor, multiplier: 0).isActive = true
        button.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
}
