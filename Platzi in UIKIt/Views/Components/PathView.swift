//
//  PathView.swift
//  Platzi in UIKIt
//
//  Created by Nicolás A. Rodríguez on 6/10/20.
//  Copyright © 2020 Nicolás A. Rodríguez. All rights reserved.
//

import UIKit
import SwiftUI

class PathView: UIView {
    private var background: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.alpha = 0.5
        return view
    }()
    
    lazy var pathImage: UIImageView = {
        let pathImage = UIImageView()
        pathImage.clipsToBounds = true
        pathImage.image = UIImage(named: "adwords-background")
        pathImage.contentMode = .scaleAspectFill
        return pathImage
    }()
    
    lazy var pathTitle: UILabel = {
        let pathTitle = UILabel()
        pathTitle.text = "English School"
        pathTitle.numberOfLines = 0
        pathTitle.font = .systemFont(ofSize: 17, weight: .heavy)
        pathTitle.textColor = .white
        return pathTitle
    }()
    
    lazy var pathDescription: UILabel = {
        let pathDescription = UILabel()
        pathDescription.text = "Ruta de Aprendisaje"
        pathDescription.numberOfLines = 0
        pathDescription.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.headline)
        pathDescription.textColor = .white
        return pathDescription
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.cornerRadius = 10
        layer.masksToBounds = true
        addSubview(pathImage)
        addSubview(background)
        addSubview(pathTitle)
        addSubview(pathDescription)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        pathImage.translatesAutoresizingMaskIntoConstraints = false
        pathImage.leftAnchor.constraint(equalToSystemSpacingAfter: self.leftAnchor, multiplier: 0).isActive = true
        pathImage.rightAnchor.constraint(equalToSystemSpacingAfter: self.rightAnchor, multiplier: 0).isActive = true
        pathImage.topAnchor.constraint(equalToSystemSpacingBelow: self.topAnchor, multiplier: 0).isActive = true
        pathImage.bottomAnchor.constraint(equalToSystemSpacingBelow: self.bottomAnchor, multiplier: 0).isActive = true
        
        background.translatesAutoresizingMaskIntoConstraints = false
        background.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        background.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        background.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        background.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        pathTitle.translatesAutoresizingMaskIntoConstraints = false
        pathTitle.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -27).isActive = true
        pathTitle.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        pathTitle.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        pathTitle.heightAnchor.constraint(greaterThanOrEqualToConstant: 20).isActive = true
        
        pathDescription.translatesAutoresizingMaskIntoConstraints = false
        pathDescription.bottomAnchor.constraint(equalTo: pathTitle.topAnchor, constant: -4).isActive = true
        pathDescription.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        pathDescription.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        pathDescription.heightAnchor.constraint(greaterThanOrEqualToConstant: 20).isActive = true
    }
    
     required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
}

@available(iOS 13.0, *)
struct PathView_Previews: PreviewProvider {
    static var previews: some View {
        Container()
            .previewLayout(.fixed(width: 350, height: 120))
    }
    
    struct Container: UIViewRepresentable {
        func makeUIView(context: Context) -> UIView {
            let view = PathView()
            return view
        }
        
        func updateUIView(_ uiView: UIView, context: Context) {
            
        }
        
        typealias UIViewType = UIView
    }
}
