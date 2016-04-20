//
//  MyViewController.swift
//  randomizer
//
//  Created by Patrick Smith on 4/10/16.
//  Copyright © 2016 PromptWorks. All rights reserved.
//

import Foundation
import UIKit

class MyViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func didTap(sender: UITapGestureRecognizer) {
        var degrees: CGFloat = 0
        if (arc4random_uniform(2) == 0) {
            print("left")
            degrees = 90
        } else {
            print("right")
            degrees = -90
        }
        imageView.image = UIImage(named: "arrow")
        imageView.transform = CGAffineTransformMakeRotation(degrees * CGFloat(M_PI/180))
    }
}