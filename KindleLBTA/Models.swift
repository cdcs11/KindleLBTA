//
//  Models.swift
//  KindleLBTA
//
//  Created by Dong-Yoon Choi on 11/4/18.
//  Copyright © 2018 Dong-Yoon Choi. All rights reserved.
//

import UIKit

class Book {
    let title: String
    let author: String
    let pages: [Page]
    let image: UIImage
    
    init(title: String, author: String, image: UIImage, pages: [Page]) {
        self.title   = title
        self.author = author
        self.image = image
        self.pages = pages
    }
}

class Page {
    let number: Int
    let text: String
    
    init(number: Int, text: String) {
        self.number = number
        self.text = text
    }
}
