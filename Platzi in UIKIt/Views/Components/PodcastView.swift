//
//  PodcastView.swift
//  Platzi in UIKIt
//
//  Created by Nicolás A. Rodríguez on 6/12/20.
//  Copyright © 2020 Nicolás A. Rodríguez. All rights reserved.
//

import UIKit
import SwiftUI

class PodcastView: UIView {
    lazy var podcastImage: UIImageView = {
        let pdcastImage = UIImageView()
        pdcastImage.image = UIImage(named: "adwords-background")
        pdcastImage.clipsToBounds = true
        pdcastImage.contentMode = .scaleAspectFill
        return pdcastImage
    }()
    
    lazy var podcastTitle: UILabel = {
        let postTitle = UILabel()
        postTitle.text = "¿Anonymous, Hackers o Hacktivistas?"
        postTitle.numberOfLines = 0
        postTitle.font = .boldSystemFont(ofSize: 18)
        postTitle.textColor = .black
        return postTitle
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        podcastImage.layer.cornerRadius = 10
        podcastImage.layer.masksToBounds = true
        addSubview(podcastImage)
        addSubview(podcastTitle)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        podcastImage.translatesAutoresizingMaskIntoConstraints = false
        podcastImage.topAnchor.constraint(greaterThanOrEqualTo: self.topAnchor, constant: 0).isActive = true
        podcastImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
        podcastImage.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
        podcastImage.bottomAnchor.constraint(equalTo: podcastTitle.topAnchor, constant: 0).isActive = true
        podcastImage.widthAnchor.constraint(equalTo: podcastImage.heightAnchor, multiplier: 1/1).isActive = true
        
        podcastTitle.translatesAutoresizingMaskIntoConstraints = false
        podcastTitle.topAnchor.constraint(greaterThanOrEqualTo: podcastImage.topAnchor, constant: 0).isActive = true
        podcastTitle.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
        podcastTitle.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
        podcastTitle.bottomAnchor.constraint(greaterThanOrEqualTo: self.bottomAnchor, constant: 0).priority = UILayoutPriority(rawValue: 100)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

@available(iOS 13.0, *)
struct PodcastView_Previews: PreviewProvider {
    static var previews: some View {
        Container()
            .previewLayout(.fixed(width: 350, height: 420))
    }
    
    struct Container: UIViewRepresentable {
        func makeUIView(context: Context) -> UIView {
            let view = PodcastView()
            return view
        }
        
        func updateUIView(_ uiView: UIView, context: Context) {
            
        }
        
        typealias UIViewType = UIView
    }
}
