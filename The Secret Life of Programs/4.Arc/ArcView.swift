//
//  ArcView.swift
//  DrawingAlgorithm
//
//  Created by 한현규 on 2/14/24.
//

import UIKit


final class ArcView: UIView{
 
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        
        let width = rect.width
        let height = rect.height
        
        
        var x = 0
        var y = height
        
        let A = (height) * (height)
        let B = (width) * (width)
        
        var dx = A
        var dy = -2 * B * y + B
        
        let d2x = 2 * A
        let d2y = 2 * B
        var d = 0.0
        
        
        draw(x: x, y: Int(y))
        
        
        while y >= 0 && x < Int(width){
            let dh = d + dx         //(x+1, y)
            let dv = abs(d + dy)    //(x, y-1)
            let dd = abs(d + dx + dy)     //(x+1, y-1)
            
            //dh or dd -> x++
            if dh < dv || dd < dv{
                x += 1
                d += dx
                dx += d2x
            }
            
            //dv or dd -> y--
            if dv < dh || dd < dh{
                y -= 1
                d += dy
                dy += d2y
            }
            
            draw(x: x, y: Int(y))
          
        }
        
    }
    
    func draw(x: Int, y: Int){
        let dotPath = UIBezierPath()
        dotPath.lineWidth = 1.0
        UIColor.systemBlue.set()
        
        
        dotPath.addArc(
            withCenter: CGPoint(x: x, y: Int(y)),
            radius: 0.25,
            startAngle: 0.0,
            endAngle: .pi * 2,
            clockwise: true
        )
        
        dotPath.stroke()
    }
    
}
