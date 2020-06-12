//
//  ViewController.swift
//  Platzi in UIKIt
//
//  Created by Nicolás A. Rodríguez on 6/8/20.
//  Copyright © 2020 Nicolás A. Rodríguez. All rights reserved.
//

import UIKit
import SwiftUI

class ExploreController: UICollectionViewController {
    init() {
        super.init(collectionViewLayout: ExploreController.createLayout())
    }
    
    static func createLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { (section, env) -> NSCollectionLayoutSection? in
            if section == 0 {
                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                item.contentInsets.top = 16
                item.contentInsets.trailing = 20
                item.contentInsets.leading = 20
                item.contentInsets.bottom = 16
                
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(200)), subitems: [item])
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .paging
                return section
            } else if section == 1 {
                let item = NSCollectionLayoutItem(layoutSize:
                    .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.33)))
                item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5)
                
                let group = NSCollectionLayoutGroup.vertical(layoutSize:
                    .init(widthDimension: .fractionalWidth(0.80), heightDimension: .estimated(165)), subitem: item, count: 3)
                group.interItemSpacing = .fixed(8)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .groupPaging
                section.contentInsets.leading = 16
                section.contentInsets.trailing = 20
                section.boundarySupplementaryItems = [
                    .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50)), elementKind: "catHeaderId", alignment: .topLeading)
                ]
                return section
            } else if section == 2 {
                let item = NSCollectionLayoutItem(layoutSize:
                    .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.33)))
                item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5)
                
                let group = NSCollectionLayoutGroup.vertical(layoutSize:
                    .init(widthDimension: .fractionalWidth(0.80), heightDimension: .estimated(130)), subitem: item, count: 1)
                group.interItemSpacing = .fixed(8)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .groupPaging
                section.contentInsets.leading = 16
                section.contentInsets.trailing = 20
                section.boundarySupplementaryItems = [
                    .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50)), elementKind: "catHeaderId", alignment: .topLeading)
                ]
                return section
            } else if section == 3 {
                let item = NSCollectionLayoutItem(layoutSize:
                    .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.33)))
                item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5)
                
                let group = NSCollectionLayoutGroup.vertical(layoutSize:
                    .init(widthDimension: .fractionalWidth(0.70), heightDimension: .estimated(210)), subitem: item, count: 1)
                group.interItemSpacing = .fixed(8)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .groupPaging
                section.contentInsets.leading = 16
                section.contentInsets.trailing = 20
                section.boundarySupplementaryItems = [
                    .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50)), elementKind: "catHeaderId", alignment: .topLeading)
                ]
                return section
            } else {
                let item = NSCollectionLayoutItem(layoutSize:
                    .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.33)))
                item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5)
                
                let group = NSCollectionLayoutGroup.vertical(layoutSize:
                    .init(widthDimension: .fractionalWidth(0.60), heightDimension: .estimated(185)), subitem: item, count: 1)
                group.interItemSpacing = .fixed(8)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .groupPaging
                section.contentInsets.leading = 16
                section.contentInsets.trailing = 20
                section.boundarySupplementaryItems = [
                    .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50)), elementKind: "catHeaderId", alignment: .topLeading)
                ]
                return section
            }
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if indexPath.section == 1 {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headerId", for: indexPath) as! Header
            header.label.text = "Cursos"
            return header
        } else if indexPath.section == 2 {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headerId", for: indexPath) as! Header
            header.label.text = "Rutas Recomendadas"
            return header
        } else if indexPath.section == 3 {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headerId", for: indexPath) as! Header
            header.label.text = "Últimos posts"
            return header
        } else if indexPath.section == 4 {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headerId", for: indexPath) as! Header
            header.label.text = "Últimos podcasts"
            return header
        } else {
            return UICollectionReusableView()
        }
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        5
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return 8
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "featuredCourseCellId", for: indexPath) as! FeaturedCourseCell
            return cell
        } else if indexPath.section == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "courseCellId", for: indexPath) as! CourseCell
            return cell
        } else if indexPath.section == 2 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "pathCellId", for: indexPath) as! PathCell
            return cell
        } else if indexPath.section == 3 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "postCellId", for: indexPath) as! PostCell
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "defaultCellId", for: indexPath)
            cell.backgroundColor = .red
            return cell
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Explore"
        collectionView.backgroundColor = .white
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "defaultCellId")
        collectionView.register(Header.self, forSupplementaryViewOfKind: "catHeaderId", withReuseIdentifier: "headerId")
        collectionView.register(FeaturedCourseCell.self, forCellWithReuseIdentifier: "featuredCourseCellId")
        collectionView.register(CourseCell.self, forCellWithReuseIdentifier: "courseCellId")
        collectionView.register(PathCell.self, forCellWithReuseIdentifier: "pathCellId")
        collectionView.register(PostCell.self, forCellWithReuseIdentifier: "postCellId")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class Header: UICollectionReusableView {
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

class CourseCell: UICollectionViewCell {
    let course = CourseView()
    
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

class PathCell: UICollectionViewCell {
    let path = PathView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(path)
    }
    
    override func layoutSubviews() {
        path.translatesAutoresizingMaskIntoConstraints = false
        path.leftAnchor.constraint(equalToSystemSpacingAfter: self.leftAnchor, multiplier: 0).isActive = true
        path.rightAnchor.constraint(equalToSystemSpacingAfter: self.rightAnchor, multiplier: 0).isActive = true
        path.topAnchor.constraint(equalToSystemSpacingBelow: self.topAnchor, multiplier: 0).isActive = true
        path.bottomAnchor.constraint(equalToSystemSpacingBelow: self.bottomAnchor, multiplier: 0).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Container().edgesIgnoringSafeArea(.all)
    }
    
    struct Container: UIViewControllerRepresentable {
        func makeUIViewController(context: Context) -> UIViewController {
            UINavigationController(rootViewController: ExploreController())
        }
        
        func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
            
        }
    }
}

