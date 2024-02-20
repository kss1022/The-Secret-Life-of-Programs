//
//  GradientView.swift
//  DrawingAlgorithm
//
//  Created by 한현규 on 2/14/24.
//

import UIKit


final class GradientView: UIView{
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        let width = rect.width
        let height = rect.height
        
        
        var dx = width
        var dc = 255.0
        
        var d = 2 * dc - dx
        var color = 0.0
        
        dx *= 2
        dc *= 2
        
        for x in 0..<Int(width){
            let path = UIBezierPath()
            path.lineWidth = 1.0
            
            UIColor(red: color / 255, green: color / 255, blue: color / 255, alpha: 1.0).set()

            
            path.move(to: CGPoint(x: x, y: 0))
            path.addLine(to: CGPoint(x: x, y: Int(height)))
            path.stroke()
            
            if d >= 0{
                color += 1
                d -= dx
            }

            d += dc
        }
        
        
        
    }
    
}
