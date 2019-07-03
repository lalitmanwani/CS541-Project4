//
//  BookCell.swift
//  CS541-Project4
//
//  Created by Admin on 7/3/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit


class BookCell: UITableViewCell  {
    

    @IBOutlet weak var bookTitleLabel: UILabel!
    
    @IBOutlet weak var bookImageView: UIImageView!
    
    @IBOutlet weak var bookAuthor: UILabel!
    
    
    func setBook(book: Book) {
        bookImageView.image = book.image
        bookTitleLabel.text = book.title
        bookAuthor.text = book.author
    }
}
