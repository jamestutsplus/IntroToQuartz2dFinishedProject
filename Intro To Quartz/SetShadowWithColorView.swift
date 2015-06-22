//
//  SetShadowWithColor.swift
//  Intro To Quartz
//
//  Created by James Tyner on 6/18/15.
//  Copyright (c) 2015 James Tyner. All rights reserved.
//

import UIKit

class SetShadowWithColor: UIView {

    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        CGContextSaveGState(context)
        let shadowOffset = CGSizeMake(-15,20)
        CGContextSetShadowWithColor(context,shadowOffset,3,UIColor.greenColor().CGColor)
        CGContextSetStrokeColorWithColor(context,UIColor.redColor().CGColor)
        let rectangle = CGRectMake(50,50,frame.size.width-100,frame.size.height-100)
        CGContextAddRect(context, rectangle)
        CGContextStrokePath(context)
        CGContextRestoreGState(context)
    }
 

}
