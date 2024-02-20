//
//  GrideView.swift
//  DrawingAlgorithm
//
//  Created by 한현규 on 2/14/24.
//

import UIKit


final class GrideView: UIView{
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        let grid = 25
        
        
        let width  = Int(layer.frame.width)
        let height  = Int(layer.frame.height)
        
        let path = UIBezierPath()
        path.lineWidth = 2
        
        
        for i in stride(from: grid, through: width, by: grid){
            path.move(to: CGPoint(x: i, y: 0))
            path.addLine(to: CGPoint(x: i, y: height))
        }
        

        for i in stride(from: grid, through: height, by: grid){
            path.move(to: CGPoint(x: 0, y: i))
            path.addLine(to: CGPoint(x: width, y: i))
        }
        
        UIColor.systemBlue.set()
        path.stroke()
        
    }
}

