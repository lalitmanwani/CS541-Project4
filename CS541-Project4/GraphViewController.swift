//
//  GraphViewController.swift
//  CS541-Project4
//
//  Created by Admin on 7/6/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class GraphViewController: UIViewController {

    @IBOutlet weak var drawView: Draw!
    @IBOutlet weak var slope: UISlider!
    @IBOutlet weak var cvalue: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func slopechanged(_ sender: Any) {
        
    slopeupdate()
    }
    
    
    
    
    @IBAction func yvalue(_ sender: Any) {
        
        yupdate()
        
        
    }
    
    
    
    func slopeupdate() {
        drawView.m = CGFloat(slope.value)
        
        
        drawView.setNeedsDisplay()
        
    }
    
    
    
    func yupdate() {
        drawView.c = CGFloat(cvalue.value)
        
        
        drawView.setNeedsDisplay()
        
    }
}
