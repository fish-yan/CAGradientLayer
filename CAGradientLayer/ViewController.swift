//
//  ViewController.swift
//  CAGradientLayer
//
//  Created by 薛焱 on 16/3/10.
//  Copyright © 2016年 薛焱. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var someView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = someView.bounds
        gradientLayer.colors = [cgColorForRed(209.0, green: 0.0, blue: 0.0),
            
            cgColorForRed(255.0, green: 102.0, blue: 34.0),
            
            cgColorForRed(255.0, green: 218.0, blue: 33.0),
            
            cgColorForRed(51.0, green: 221.0, blue: 0.0),
            
            cgColorForRed(17.0, green: 51.0, blue: 204.0),
            
            cgColorForRed(34.0, green: 0.0, blue: 102.0),
            
            cgColorForRed(51.0, green: 0.0, blue: 68.0)]
        
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        
        someView.layer.addSublayer(gradientLayer)

    }
    
    func cgColorForRed(red: CGFloat, green: CGFloat, blue: CGFloat) -> AnyObject {
        
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: 1.0).CGColor as AnyObject
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

