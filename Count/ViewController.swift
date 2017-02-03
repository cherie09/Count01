//
//  ViewController.swift
//  Count
//
//  Created by cherie on 2017/01/26.
//  Copyright © 2017年 cherie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    var images: [String] = ["まる.jpg","まる２.png","まる.jpg"]
    @IBOutlet var label: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //画像変える！
        imageView.image = UIImage(named: images[1])
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func plus () {
        number = number + 1
        imageView.image = UIImage(named: images[number%3])

        label.text = String (number)
        
    }
    
    @IBAction func minus () {
        if number == 0 {
            number = 2
        }else {
            number = number - 1
        }
        imageView.image = UIImage(named: images[number])
        
        label.text = String (number)
    }
    
}


