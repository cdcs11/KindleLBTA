//
//  BookCell.swift
//  KindleLBTA
//
//  Created by Dong-Yoon Choi on 11/4/18.
//  Copyright © 2018 Dong-Yoon Choi. All rights reserved.
//

import UIKit

class BookCell: UITableViewCell{
    
    var book: Book? {
        didSet{
            coverImageview.image = book?.image
            titleLabel.text = book?.title
            authorLabel.text = book?.author
        }
    }
    private let coverImageview: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "This is the text for the title of our book inside of our cell"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let authorLabel: UILabel = {
       let label = UILabel()
        label.text = "This is some author for the book taht we have in this row"
        label.translatesAutoresizingMaskIntoConstraints=false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(coverImageview)
        coverImageview.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        coverImageview.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        coverImageview.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8).isActive = true
        coverImageview.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        addSubview(titleLabel)
        titleLabel.leftAnchor.constraint(equalTo: coverImageview.rightAnchor, constant: 8).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -10).isActive = true
        
        addSubview(authorLabel)
        authorLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4).isActive=true
        authorLabel.leftAnchor.constraint(equalTo: coverImageview.rightAnchor, constant: 8).isActive=true
        authorLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive=true
        authorLabel.heightAnchor.constraint(equalToConstant: 20).isActive=true
    }
    

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
