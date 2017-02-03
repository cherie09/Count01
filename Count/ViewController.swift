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
    var images: [String] = ["まる.jpg","まる２.png","まる.jpg","まる２.png"]
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
        if number == 3 {
            number = 0
        } else {
            number = number + 1
        }
        imageView.image = UIImage(named: images[number])

        label.text = String (number)
        
    }
    
    @IBAction func minus () {
        if number == 0 {
            number = 3
        }else {
            number = number - 1
        }
        imageView.image = UIImage(named: images[number])
        
        label.text = String (number)
    }
    
}


