//
//  Draw.swift
//  CS541-Project4
//
//  Created by Admin on 7/3/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class Draw: UIView {

 
    var m:CGFloat = 50.0
    var c:CGFloat = 50.0
    
    override func draw(_ rect: CGRect) {
        

        
        draworigin(rect: rect)
   
        

   //         dr(rect: rect)
        
        
        
        
    }
    
    
    
    func draworigin(rect:CGRect) {
        
        let context = UIGraphicsGetCurrentContext()
        let originy:CGPoint = CGPoint(x: rect.width/2,  y:0)
        
        let desty:CGPoint = CGPoint(x: rect.width/2, y: rect.height)
        context?.move(to: originy)
        
        context?.addLine(to: desty)
        
        
        let originx:CGPoint = CGPoint(x: 0  ,  y:rect.height/2)
        
        let destx:CGPoint = CGPoint(x: rect.width, y: rect.height/2)
        context?.move(to: originx)
        
        context?.addLine(to: destx)
        
        
        context?.strokePath()
    }
 
  /*  func dr(rect:CGRect){
        let ctx = UIGraphicsGetCurrentContext()
       // ctx!.setLineWidth(3.0)
        
      
        let xorigin:CGFloat = rect.width/2
        let yorigin:CGFloat = rect.height/2
        print(xorigin)
        print(yorigin)
        
        

        
        let x:CGFloat = 50
        
        //m = 15.0
        //c = 0.0
        
        let y:CGFloat = m*x+c
        
        let origin:CGPoint = CGPoint(x: xorigin ,y: yorigin + c)
        
        let dest:CGPoint = CGPoint(x: x , y: y)
        
        ctx?.move(to: origin)
        
        ctx?.addLine(to: dest)
        
        ctx?.strokePath()
        
    }
    
    
*/

}
