//
//  ViewController.swift
//  HWsuperSviewdidload
//
//  Created by Daniel on 2019/4/13.
//  Copyright © 2019 Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func superS(origin: CGPoint, scale: CGFloat, rotateAngle:CGFloat){
        
        let sview = CGRect(origin: origin, size: CGSize(width: 100, height: 100))
        
        let sviewBackground = UIView(frame: sview)
        sviewBackground.backgroundColor = UIColor.clear
        let scaleTransform = CGAffineTransform(scaleX: scale, y:scale)
        let rotateTransform = CGAffineTransform(rotationAngle: CGFloat.pi / 180 * rotateAngle)
        sviewBackground.transform = scaleTransform.concatenating(rotateTransform)
        
        
        
    var rect = CGRect(x: 0, y: 0, width: 500, height: 380)
    let backgroundView = UIView(frame: rect)
    backgroundView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
    
    //blackbackground
    rect = CGRect(x: 0, y: 0, width: 500, height: 380)
    let yellowbackView = UIView(frame: rect)
    yellowbackView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    let path1 = UIBezierPath()
    var point = CGPoint(x: 16, y: 97)
    path1.move(to: point)
    point = CGPoint(x: 250, y: 369)
    path1.addLine(to: point)
    point = CGPoint(x: 485, y: 97)
    path1.addLine(to: point)
    point = CGPoint(x: 403, y: 13)
    path1.addLine(to: point)
    point = CGPoint(x: 99, y: 13)
    path1.addLine(to: point)
    path1.close()
    let pathShape1 = CAShapeLayer()
    pathShape1.path = path1.cgPath
    yellowbackView.layer.mask = pathShape1
    backgroundView.addSubview(yellowbackView)
    //redbackground
    rect = CGRect(x: 0, y: 0, width: 500, height: 380)
    let redbackView = UIView(frame: rect)
    redbackView.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
    let path2 = UIBezierPath()
    var point2 = CGPoint(x: 28, y: 97)
    path2.move(to: point2)
    point2 = CGPoint(x: 250, y: 355)
    path2.addLine(to: point2)
    point2 = CGPoint(x: 472, y: 97)
    path2.addLine(to: point2)
    point2 = CGPoint(x: 399, y: 22)
    path2.addLine(to: point2)
    point2 = CGPoint(x: 102, y: 23)
    path2.addLine(to: point2)
    path2.close()
    
    let pathShape2 = CAShapeLayer()
    pathShape2.path = path2.cgPath
    redbackView.layer.mask = pathShape2
    backgroundView.addSubview(redbackView)
    //leftup(black)
    rect = CGRect(x: 0, y: 0, width: 500, height: 380)
    let leftupView = UIView(frame: rect)
    leftupView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    
    let leftupPath = UIBezierPath()
    leftupPath.move(to:CGPoint(x: 92, y: 140))
    leftupPath.addQuadCurve(to:CGPoint(x: 158, y: 40), controlPoint:(CGPoint(x: 101, y: 77)))
    leftupPath.addLine(to:CGPoint(x: 111, y: 40))
    leftupPath.addLine(to: CGPoint(x: 55, y: 98))
    leftupPath.addLine(to: CGPoint(x: 92, y: 140))
    let leftupShape = CAShapeLayer()
    leftupShape.path = leftupPath.cgPath
    leftupView.layer.mask = leftupShape
    backgroundView.addSubview(leftupView)
    //leftup(yellow)
    rect = CGRect(x: 0, y: 0, width: 500, height: 380)
    let leftupView2 = UIView(frame: rect)
    leftupView2.backgroundColor = UIColor(red: 1, green: 1, blue: 0, alpha: 1)
    let leftupPath2 = UIBezierPath()
    leftupPath2.move(to:CGPoint(x: 83, y: 115))
    leftupPath2.addQuadCurve(to: CGPoint(x: 129, y: 49), controlPoint: CGPoint(x: 95, y: 73))
    leftupPath2.addLine(to: CGPoint(x: 114, y: 49))
    leftupPath2.addLine(to: CGPoint(x: 66, y: 98))
    leftupPath2.addLine(to: CGPoint(x: 83, y: 115))
    let leftupShape2 = CAShapeLayer()
    leftupShape2.path = leftupPath2.cgPath
    leftupView2.layer.mask = leftupShape2
    backgroundView.addSubview(leftupView2)
    //middle(black)
    rect = CGRect(x: 0, y: 0, width: 500, height: 380)
    let middleView = UIView(frame: rect)
    middleView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    
    let middlePath = UIBezierPath()
    middlePath.move(to: CGPoint(x: 116, y: 167))
    middlePath.addLine(to: CGPoint(x: 160, y: 219))
    middlePath.addQuadCurve(to: CGPoint(x: 245, y: 232), controlPoint: CGPoint(x: 192, y: 184))
    middlePath.addQuadCurve(to: CGPoint(x: 116, y: 167), controlPoint: CGPoint(x: 450, y: 199))
    let middleShape = CAShapeLayer()
    middleShape.path = middlePath.cgPath
    middleView.layer.mask = middleShape
    backgroundView.addSubview(middleView)
    //middle(yellow)
    rect = CGRect(x: 0, y: 0, width: 500, height: 380)
    let middleView2 = UIView(frame: rect)
    middleView2.backgroundColor = UIColor(red: 1, green: 1, blue: 0, alpha: 1)
    
    let middlePath2 = UIBezierPath()
    middlePath2.move(to: CGPoint(x: 138, y: 180))
    middlePath2.addLine(to: CGPoint(x: 161, y: 205))
    middlePath2.addQuadCurve(to: CGPoint(x: 250, y: 222), controlPoint: CGPoint(x: 191, y: 179))
    middlePath2.addQuadCurve(to: CGPoint(x: 138, y: 180), controlPoint: CGPoint(x: 390, y: 198))
    let middleShape2 = CAShapeLayer()
    middleShape2.path = middlePath2.cgPath
    middleView2.layer.mask = middleShape2
    backgroundView.addSubview(middleView2)
    //middledown(black)
    rect = CGRect(x: 0, y: 0, width: 500, height: 380)
    let middledownView = UIView(frame: rect)
    middledownView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    
    let middledownPath = UIBezierPath()
    middledownPath.move(to: CGPoint(x: 190, y: 252))
    middledownPath.addLine(to: CGPoint(x: 250, y: 321))
    middledownPath.addLine(to: CGPoint(x: 311, y: 250))
    middledownPath.addQuadCurve(to: CGPoint(x: 190, y: 252), controlPoint: CGPoint(x: 250, y: 265))
    let middledownShape = CAShapeLayer()
    middledownShape.path = middledownPath.cgPath
    middledownView.layer.mask = middledownShape
    backgroundView.addSubview(middledownView)
    //middledown(yellow)
    rect = CGRect(x: 0, y: 0, width: 500, height: 380)
    let middledownView2 = UIView(frame: rect)
    middledownView2.backgroundColor = UIColor(red: 1, green: 1, blue: 0, alpha: 1)
    
    let middledownPath2 = UIBezierPath()
    middledownPath2.move(to: CGPoint(x: 213, y: 264))
    middledownPath2.addLine(to: CGPoint(x: 251, y: 306))
    middledownPath2.addLine(to: CGPoint(x: 288, y: 264))
    middledownPath2.addQuadCurve(to: CGPoint(x: 213, y: 264), controlPoint: CGPoint(x: 249, y: 268))
    let middledownShape2 = CAShapeLayer()
    middledownShape2.path = middledownPath2.cgPath
    middledownView2.layer.mask = middledownShape2
    backgroundView.addSubview(middledownView2)
    //middleup(black)
    rect = CGRect(x: 0, y: 0, width: 500, height: 380)
    let middleupView = UIView(frame: rect)
    middleupView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    
    let middleupPath = UIBezierPath()
    middleupPath.move(to: CGPoint(x: 394, y: 100))
    middleupPath.addLine(to: CGPoint(x: 395, y: 45))
    middleupPath.addLine(to: CGPoint(x: 446, y: 98))
    middleupPath.addLine(to: CGPoint(x: 388, y: 164))
    middleupPath.addQuadCurve(to: CGPoint(x: 258, y: 110), controlPoint: CGPoint(x: 356, y: 122))
    middleupPath.addQuadCurve(to: CGPoint(x: 240, y: 42), controlPoint: CGPoint(x: 100, y: 75))
    middleupPath.addQuadCurve(to: CGPoint(x: 327, y: 100), controlPoint: CGPoint(x: 330, y: 48))
    middleupPath.addLine(to: CGPoint(x: 394, y: 100))
    let middleupShape = CAShapeLayer()
    middleupShape.path = middleupPath.cgPath
    middleupView.layer.mask = middleupShape
    backgroundView.addSubview(middleupView)
    //middleup(yellow)
    rect = CGRect(x: 0, y: 0, width: 500, height: 380)
    let middleupView2 = UIView(frame: rect)
    middleupView2.backgroundColor = UIColor(red: 1, green: 1, blue: 0, alpha: 1)
    
    let middleupPath2 = UIBezierPath()
    middleupPath2.move(to: CGPoint(x: 403, y: 109))
    middleupPath2.addLine(to: CGPoint(x: 403, y: 66))
    middleupPath2.addLine(to: CGPoint(x: 434, y: 97))
    middleupPath2.addLine(to: CGPoint(x: 390, y: 148))
    middleupPath2.addQuadCurve(to: CGPoint(x: 248, y: 100), controlPoint: CGPoint(x: 348, y: 111))
    middleupPath2.addQuadCurve(to: CGPoint(x: 251, y: 52), controlPoint: CGPoint(x: 120, y: 68))
    middleupPath2.addQuadCurve(to: CGPoint(x: 319, y: 108), controlPoint: CGPoint(x: 327, y: 62))
    middleupPath2.addLine(to: CGPoint(x: 403, y: 109))
    let middleupShape2 = CAShapeLayer()
    middleupShape2.path = middleupPath2.cgPath
    middleupView2.layer.mask = middleupShape2
    backgroundView.addSubview(middleupView2)
    
    //rightup(black)
    rect = CGRect(x: 0, y: 0, width: 500, height: 380)
    let rightupView = UIView(frame: rect)
    rightupView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    let rightupPath = UIBezierPath()
    rightupPath.move(to: CGPoint(x: 322, y: 40))
    rightupPath.addLine(to: CGPoint(x: 361, y: 40))
    rightupPath.addQuadCurve(to: CGPoint(x: 346, y: 69), controlPoint: CGPoint(x: 363, y: 59))
    rightupPath.addLine(to: CGPoint(x: 322, y: 40))
    let rightupShape = CAShapeLayer()
    rightupShape.path = rightupPath.cgPath
    rightupView.layer.mask = rightupShape
    backgroundView.addSubview(rightupView)
    //rightup(yellow)
    rect = CGRect(x: 0, y: 0, width: 500, height: 380)
    let rightupView2 = UIView(frame: rect)
    rightupView2.backgroundColor = UIColor(red: 1, green: 1, blue: 0, alpha: 1)
    let rightupPath2 = UIBezierPath()
    rightupPath2.move(to: CGPoint(x: 343, y: 48))
    rightupPath2.addLine(to: CGPoint(x: 352, y: 48))
    rightupPath2.addLine(to: CGPoint(x: 349, y: 55))
    rightupPath2.addLine(to: CGPoint(x: 343, y: 48))
    let rightupShape2 = CAShapeLayer()
    rightupShape2.path = rightupPath2.cgPath
    rightupView2.layer.mask = rightupShape2
    backgroundView.addSubview(rightupView2)
    view.addSubview(backgroundView)
    //把sviewBackground加在backgoundView下
    sviewBackground.addSubview(backgroundView)
    view.addSubview(sviewBackground)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        superS(origin: CGPoint(x: 0, y: 0), scale: 1, rotateAngle: 0)
        superS(origin: CGPoint(x: 50, y: 250), scale: 0.5, rotateAngle: 45)
        superS(origin: CGPoint(x: 150, y: 600), scale: 0.3, rotateAngle: 180)
    }


}

