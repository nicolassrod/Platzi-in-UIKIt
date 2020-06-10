//
//  featuredCourse.swift
//  Platzi in UIKIt
//
//  Created by Nicolás A. Rodríguez on 6/8/20.
//  Copyright © 2020 Nicolás A. Rodríguez. All rights reserved.
//

import UIKit

class FeaturedCourse: UIView {
    
    var courseImage: UIImageView!
    var courseText: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        courseImage = UIImageView(frame: CGRect.zero)
        self.addSubview(courseImage)
//        courseImage.translatesAutoresizingMaskIntoConstraints = false
        courseImage.image = UIImage(named: "adwords-background")
        
        
        courseImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        courseImage.leftAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
//        courseImage.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        courseImage.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        courseImage.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
//        courseImage.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
//        courseImage.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor).isActive = true
//        courseImage.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor).isActive = true
//        courseImage.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        courseImage.clipsToBounds = true
        courseImage.contentMode = .scaleAspectFit
        courseImage.backgroundColor = UIColor.red
        
        courseText = UILabel(frame: CGRect.zero)
        courseText.text = "asdasaad"
//        stackView.addArrangedSubview(courseText)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }

}
