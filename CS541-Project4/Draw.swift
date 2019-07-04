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
    
    
    override func draw(_ rect: CGRect) {
        
           let context = UIGraphicsGetCurrentContext()
        //context!.setLineWidth(3.0)
        
        
        let xorigin:CGFloat = rect.width/2
        let yorigin:CGFloat = rect.height/2
        print(xorigin)
        print(yorigin)
        
        
        let x:CGFloat = xorigin
       
        
        
        let m:CGFloat = 20
        let c:CGFloat = 30
        
        let y:CGFloat = m*x+c
        
        let origin:CGPoint = CGPoint(x: xorigin,y: yorigin + c)
        
        let dest:CGPoint = CGPoint(x: 50 , y: y)
        
        context?.move(to: origin)
        
        context?.addLine(to: dest)
        
        
//        context?.move(to: CGPoint(x: rect.width/2 , y : rect.height / 2))
        
     
     
     
     
     
     
     
//       rect.height
        
//        m = 5;
  //      c = 1

    //    y = m*((rect.width/2) + 200)+c;

    //    context?.addLine(to: CGPoint(x:((rect.width/2) + 200), y:((rect.height/2) - 200)))
            
     ////   context?.addLines(between: <#T##[CGPoint]#>)
 
     //   context?.strokePath()
       
   
        
        
        draworigin(rect: rect)
   
        
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
 
    
    
    


}
