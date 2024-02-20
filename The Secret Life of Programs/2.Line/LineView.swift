//
//  LineView.swift
//  DrawingAlgorithm
//
//  Created by 한현규 on 2/14/24.
//

import UIKit



final class LineView: UIView{
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        
        let width  = rect.width
        let height  = rect.height
        
        let path = UIBezierPath()
        UIColor.blue.set()
        path.lineWidth = 2.0
        
        
        path.move(to: CGPoint(x: 0, y: height))
        path.addLine(to: CGPoint(x: width, y: 0))
        path.stroke()
                
        
        var dx = width
        var dy = height
        var d = 2 * dy - dx
        
        dx *= 2
        dy *= 2
        
                
        var y = height
        
        for x in stride(from: 0, to: Int(width), by: 1){
            let dotPath = UIBezierPath()
            dotPath.lineWidth = 2.0
            UIColor.red.set()

            
            dotPath.addArc(
                withCenter: CGPoint(x: x, y: Int(y)),
                radius: 0.25,
                startAngle: 0.0,
                endAngle: .pi * 2,
                clockwise: true
            )
            
            dotPath.stroke()
            
            while d >= 0{
                y -= 1
                d -= dx
            }
            
            d += dy
        }
    }
}
