//
//  ViewController.swift
//  CS541-Project4
//
//  Created by Admin on 7/3/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    var books: [Book] = []
    
    @IBOutlet weak var booktable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        books = createArray()
        configureUI()
    }
    
    
    func createArray() -> [Book] {
        
        let book1 = Book(image: #imageLiteral(resourceName: "hp"), title: "Harry Potter",author: "J.K.Rowling")
        let book2 = Book(image: #imageLiteral(resourceName: "Origin"), title: "Origin",author: "Dan Brown")
       // let video3 = Video(image: #imageLiteral(resourceName: "int-overview"), title: "iOS Interview")
     //   let video4 = Video(image: #imageLiteral(resourceName: "ss-delegates"), title: "Buttons in TableViews")
     //   let video5 = Video(image: #imageLiteral(resourceName: "ss-uipickerview-card"), title: "UIPickerView Tutorial")
    //    let video6 = Video(image: #imageLiteral(resourceName: "vlog-4"), title: "Day in the Life")
        
        return [book1,book2]
    }
    
    
    func configureUI(){
        booktable.rowHeight = UITableView.automaticDimension
       booktable.rowHeight = 160
    }
}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = books[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! BookCell
        cell.setBook(book: video)
        
        return cell
    }
}
