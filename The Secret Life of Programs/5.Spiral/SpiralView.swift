//
//  SpiralView.swift
//  DrawingAlgorithm
//
//  Created by 한현규 on 2/14/24.
//

import UIKit



final class SpiralView: UIView{
    
    private let closeEnough = 1.0
    
    
    private lazy var path: UIBezierPath = {
        let path = UIBezierPath()
        path.lineWidth = 2.0
        UIColor.systemBlue.set()
        return path
    }()
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        
        
        let centerX = rect.width / 2
        let centerY = rect.height / 2
        
        var oldTheta: CGFloat = 0.0
        
        path.move(to: CGPoint(x: centerX, y: centerY))
        
        for angle in stride(from: 0, to: 360 * 4, by: 1.0){
            let theta = 2.0 * .pi * (angle / 360)
            

            if angle > 0 {
                plot(theta1: oldTheta, theta2: theta, centerX: centerX, centerY: centerY)
            }
            
            oldTheta = theta
        }
        
        path.stroke()
    }
    
    func plot(theta1: CGFloat , theta2: CGFloat, centerX: CGFloat, centerY: CGFloat){
        
        var r = theta1 * 10
                
        let x1 = r * cos(theta1)
        let y1 = r * sin(theta1)
        
        r = theta2 * 10
        let x2 = r * cos(theta2)
        let y2 = r * sin(theta2)
                
        //distance formula
        if sqrt( (x2 - x1) * (x2 - x1)  + (y2 - y2) * (y2 - y1)) < closeEnough{
            path.move(to: CGPoint(x: x1 + centerX, y: y1 + centerY))
            path.addLine(to: CGPoint(x: x2 + centerX , y: y2 + centerY))
            return
        }
        
        
        //Retry by cutting the angle in half
        plot(theta1: theta1, theta2: theta1 + (theta2 - theta1) / 2, centerX: centerX, centerY: centerY)
        plot(theta1: theta1 + (theta2 - theta1) / 2, theta2: theta2, centerX: centerX, centerY: centerY)
    }
}
 
