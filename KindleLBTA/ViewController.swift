//
//  ViewController.swift
//  KindleLBTA
//
//  Created by Dong-Yoon Choi on 10/9/18.
//  Copyright © 2018 Dong-Yoon Choi. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var books: [Book]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(BookCell.self, forCellReuseIdentifier: "cellId")
        
        tableView.tableFooterView = UIView()
        
        navigationItem.title = "Kindle"
        
        
        
        setupBooks()

    }

     override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as!BookCell
        
       let book =  books?[indexPath.row]
       cell.book = book
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count = books?.count{
            return count
        }
        return 0
    }
    
    func setupBooks() {
        let page1 = Page(number: 1, text: "Text for the first page")
        let page2 = Page(number: 2, text: "This is text for second page")
        
        
        let pages = [page1, page2]
        let book = Book(title: "Steve Jobs", author: "Walter Isaacson", image:#imageLiteral(resourceName: "steve_jobs") , pages: pages)
        let book2 = Book(title: "Bill Gate: A Biography", author: "Michael Becraft", image:#imageLiteral(resourceName: "bill_gates"), pages: [Page(number: 1, text: "Text for page1"),
                                                                                             Page(number: 2, text: "Text for page2"),
                                                                                             Page(number: 3, text: "Text for page3"),
                                                                                             Page(number: 4, text: "Text for page4")])
        
        self.books = [book, book2]
        			
    }
}

