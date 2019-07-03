//
//  Draw.swift
//  CS541-Project4
//
//  Created by Admin on 7/3/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class Draw: UIView {

    var m:Double = 0.0
    var c:Double = 0.0
    var y:Double = 0.0
    override func draw(_ rect: CGRect) {
        
        let context = UIGraphicsGetCurrentContext()
        context!.setLineWidth(3.0)
        
        
        context?.move(to: CGPoint(x: 50, y: 60))
        
        
       
        m = 5;
        c = 1

        y = 15*300+1;

            context?.addLine(to: CGPoint(x: 300, y: y))
            
    
 
        context?.strokePath()
        
    }
    
    


}
