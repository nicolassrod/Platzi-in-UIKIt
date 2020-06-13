//
//  featuredCourse.swift
//  Platzi in UIKIt
//
//  Created by Nicolás A. Rodríguez on 6/8/20.
//  Copyright © 2020 Nicolás A. Rodríguez. All rights reserved.
//

import UIKit
import SwiftUI

class FeaturedCourse: UIView {
    private var background: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.alpha = 0.5
        return view
    }()
    
    lazy var courseImage: UIImageView = {
        let courseImage = UIImageView()
        courseImage.clipsToBounds = true
        courseImage.image = UIImage(named: "adwords-background")
        courseImage.contentMode = .scaleAspectFill
        return courseImage
    }()
    
    lazy var courseText: UILabel = {
        let courseText = UILabel()
        courseText.text = "Curso para desbloquear tu creatividad"
        courseText.numberOfLines = 0
        courseText.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.headline)
        courseText.textColor = .white
        return courseText
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.cornerRadius = 10
        layer.masksToBounds = true
        addSubview(courseImage)
        addSubview(background)
        addSubview(courseText)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        courseImage.translatesAutoresizingMaskIntoConstraints = false
        courseImage.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        courseImage.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        courseImage.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        courseImage.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        background.translatesAutoresizingMaskIntoConstraints = false
        background.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        background.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        background.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        background.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        courseText.translatesAutoresizingMaskIntoConstraints = false
        courseText.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20).isActive = true
        courseText.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        courseText.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        courseText.heightAnchor.constraint(greaterThanOrEqualToConstant: 20).isActive = true
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }

}

struct FeaturedCourse_Previews: PreviewProvider {
    static var previews: some View {
        Container()
            .previewLayout(.fixed(width: 320, height: 200))
    }
    
    struct Container: UIViewRepresentable {
        func makeUIView(context: Context) -> UIView {
            let view = FeaturedCourse()
            return view
        }
        
        func updateUIView(_ uiView: UIView, context: Context) {
            
        }
        
        typealias UIViewType = UIView
    }
}

