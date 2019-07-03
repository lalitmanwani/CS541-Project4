//
//  Book.swift
//  CS541-Project4
//
//  Created by Admin on 7/3/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import Foundation
import UIKit

class Book {
    
    var image: UIImage
    var title: String
    var author: String
    
    
    
    init(image: UIImage, title: String,author:String) {
        self.image = image
        self.title = title
        self.author = author
    }
}
