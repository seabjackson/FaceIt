//
//  FaceView.swift
//  FaceIt
//
//  Created by Seab on 3/31/17.
//  Copyright © 2017 Seab Jackson. All rights reserved.
//

import UIKit

class FaceView: UIView {
    
    var scale: CGFloat = 0.9
    
    private var skullRadius: CGFloat {
       return  min(bounds.size.width, bounds.size.height) / 2 * scale
    }
    
    private var skullCenter: CGPoint {
        return CGPoint(x: bounds.midX, y: bounds.midY)
    }
    
    private enum Eye
    {
        case left
        case right
    }
    
    private func pathForEye(_ eye: Eye) -> UIBezierPath
    {
        // returns a point that is the center of the eye
        func centerOfEye(_ eye: Eye) -> CGPoint {
            
        }
    }
    
    private func pathForSkull() -> UIBezierPath
    {
        let path = UIBezierPath(
            arcCenter: skullCenter,
            radius: skullRadius,
            startAngle: 0,
            endAngle: 2 * CGFloat.pi,
            clockwise: false
        )
        path.lineWidth = 5.0
        return path

    }
    
    override func draw(_ rect: CGRect) {
        UIColor.blue.set()
        pathForSkull().stroke()
    }
    
    private struct Ratios {
        static let skullRadiusToEyeOffset: CGFloat = 3
        static let skullRadiusToEyeRadius: CGFloat = 10
        static let skullRadiusToMouthWidth: CGFloat = 1
        static let skullRadiusToMouthHeight: CGFloat = 3
        static let skullRadiusToMouthOffset: CGFloat = 3
    }
}





