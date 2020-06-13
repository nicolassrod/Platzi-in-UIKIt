//
//  FeaturedCourseCell.swift
//  Platzi in UIKIt
//
//  Created by Nicolás A. Rodríguez on 6/12/20.
//  Copyright © 2020 Nicolás A. Rodríguez. All rights reserved.
//

import Foundation
import UIKit

class FeaturedCourseCell: UICollectionViewCell {
    let course = FeaturedCourse()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(course)
    }
    
    override func layoutSubviews() {
        course.translatesAutoresizingMaskIntoConstraints = false
        course.leftAnchor.constraint(equalToSystemSpacingAfter: self.leftAnchor, multiplier: 0).isActive = true
        course.rightAnchor.constraint(equalToSystemSpacingAfter: self.rightAnchor, multiplier: 0).isActive = true
        course.topAnchor.constraint(equalToSystemSpacingBelow: self.topAnchor, multiplier: 0).isActive = true
        course.bottomAnchor.constraint(equalToSystemSpacingBelow: self.bottomAnchor, multiplier: 0).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
