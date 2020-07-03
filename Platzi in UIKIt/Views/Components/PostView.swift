//
//  PostView.swift
//  Platzi in UIKIt
//
//  Created by Nicolás A. Rodríguez on 6/10/20.
//  Copyright © 2020 Nicolás A. Rodríguez. All rights reserved.
//

import UIKit
import SwiftUI

class PostView: UIView {
    private lazy var stack1: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fill
        stack.spacing = 12
        return stack
    }()
    
    private lazy var stack2: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 12
        return stack
    }()
    
    private lazy var darckEfect: UIView = {
        let darckEfect = UIView()
        darckEfect.backgroundColor = .black
        darckEfect.alpha = 0.5
        return darckEfect
    }()
    
    lazy var postBackgroundImage: UIImageView = {
        let postBackgroundImage = UIImageView()
        postBackgroundImage.clipsToBounds = true
        postBackgroundImage.image = UIImage(named: "adwords-background")
        postBackgroundImage.contentMode = .scaleAspectFill
        return postBackgroundImage
    }()
    
    lazy var postUserImage: UIImageView = {
        let postUserImage = UIImageView()
        postUserImage.clipsToBounds = true
        postUserImage.image = UIImage(named: "avatar")
        postUserImage.contentMode = .scaleAspectFill
        postUserImage.layer.cornerRadius = 20
        return postUserImage
    }()
    
    lazy var postUsername: UILabel = {
        let postUsername = UILabel()
        postUsername.text = "isisconvelo"
        postUsername.numberOfLines = 1
        postUsername.font = .systemFont(ofSize: 16, weight: .bold)
        postUsername.textColor = .white
        return postUsername
    }()
    
    lazy var postTitle: UILabel = {
        let postTitle = UILabel()
        postTitle.text = "Habla 3 idiomas y dirige la Escuela de Inglés de Platzi, ¿sabes quién es"
        postTitle.numberOfLines = 0
        postTitle.font = .boldSystemFont(ofSize: 18)
        postTitle.textColor = .white
        return postTitle
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.cornerRadius = 10
        layer.masksToBounds = true
        addSubview(postBackgroundImage)
        addSubview(darckEfect)
        addSubview(stack1)
        addSubview(stack2)
        stack1.addArrangedSubview(postTitle)
        stack1.addArrangedSubview(stack2)
        stack2.addArrangedSubview(postUserImage)
        stack2.addArrangedSubview(postUsername)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        postBackgroundImage.translatesAutoresizingMaskIntoConstraints = false
        postBackgroundImage.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        postBackgroundImage.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        postBackgroundImage.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        postBackgroundImage.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true

        darckEfect.translatesAutoresizingMaskIntoConstraints = false
        darckEfect.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        darckEfect.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        darckEfect.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        darckEfect.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        stack1.translatesAutoresizingMaskIntoConstraints = false
        stack1.topAnchor.constraint(greaterThanOrEqualTo: self.topAnchor, constant: 20).isActive = true
        stack1.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        stack1.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        stack1.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20).isActive = true
        
        postUserImage.translatesAutoresizingMaskIntoConstraints = false
        postUserImage.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
        postUserImage.widthAnchor.constraint(equalToConstant: 40.0).isActive = true
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
    
}

@available(iOS 13.0, *)
struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        Container()
            .previewLayout(.fixed(width: 250, height: 220))
    }
    
    struct Container: UIViewRepresentable {
        func makeUIView(context: Context) -> UIView {
            let view = PostView()
            return view
        }
        
        func updateUIView(_ uiView: UIView, context: Context) {
            
        }
        
        typealias UIViewType = UIView
    }
}
