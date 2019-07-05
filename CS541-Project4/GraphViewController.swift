//
//  GraphViewController.swift
//  CS541-Project4
//
//  Created by Admin on 7/3/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class GraphViewController: UIViewController {

    @IBOutlet weak var slope: UISlider!
    
    @IBOutlet weak var yinter: UISlider!
    
    
    var s:CGFloat = 0.0
    
    
    var yi:CGFloat = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        s = CGFloat(slope.value)
        yi = CGFloat(yinter.value)
        
        //let  d = Draw()
        //d.m = s
        //d.c = yi
        
        
        
        
    }

    

    @IBAction func slopechanged(_ sender: Any) {
        
        let d = Draw()
        d.dr(rect: d.d)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
