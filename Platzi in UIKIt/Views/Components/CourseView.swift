//
//  CourseView.swift
//  Platzi in UIKIt
//
//  Created by Nicolás A. Rodríguez on 6/10/20.
//  Copyright © 2020 Nicolás A. Rodríguez. All rights reserved.
//

import UIKit
import SwiftUI

class CourseView: UIView {
    private lazy var stack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 12
        return stack
    }()
    
    lazy var courseImage: UIImageView = {
        let courseImage = UIImageView()
        courseImage.clipsToBounds = true
        courseImage.image = UIImage(named: "badge")
        courseImage.contentMode = .scaleAspectFit
        return courseImage
    }()
    
    lazy var courseText: UILabel = {
        let courseText = UILabel()
        courseText.text = "Cómo preparate Profesionalmente para el futuro"
        courseText.numberOfLines = 0
        courseText.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.headline)
        courseText.textColor = .black
        return courseText
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.stack.addArrangedSubview(courseImage)
        self.stack.addArrangedSubview(courseText)
        addSubview(stack)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.leftAnchor.constraint(equalToSystemSpacingAfter: self.leftAnchor, multiplier: 0).isActive = true
        stack.rightAnchor.constraint(equalToSystemSpacingAfter: self.rightAnchor, multiplier: 0).isActive = true
        stack.topAnchor.constraint(equalToSystemSpacingBelow: self.topAnchor, multiplier: 0).isActive = true
        stack.bottomAnchor.constraint(equalToSystemSpacingBelow: self.bottomAnchor, multiplier: 0).isActive = true
        
        courseImage.translatesAutoresizingMaskIntoConstraints = false
        courseImage.heightAnchor.constraint(equalToConstant: 75).isActive = true
        courseImage.widthAnchor.constraint(equalToConstant: 75).isActive = true
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
    
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        Container()
            .previewLayout(.fixed(width: 350, height: 120))
    }
    
    struct Container: UIViewRepresentable {
        func makeUIView(context: Context) -> UIView {
            let view = CourseView()
            return view
        }
        
        func updateUIView(_ uiView: UIView, context: Context) {
            
        }
        
        typealias UIViewType = UIView
    }
}

