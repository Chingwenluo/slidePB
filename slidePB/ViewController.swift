//
//  ViewController.swift
//  slidePB
//
//  Created by eric on 2020/8/14.
//

import UIKit

class ViewController: UIViewController {

    //悟空圖
    @IBOutlet weak var wukongImage: UIImageView!
    @IBOutlet weak var wukong1Image: UIImageView!
    @IBOutlet weak var wukong2Image: UIImageView!
    @IBOutlet weak var wukong3Image: UIImageView!
    //貝吉塔圖
    @IBOutlet weak var vegetaImage: UIImageView!
    @IBOutlet weak var vegetaImage1: UIImageView!
    @IBOutlet weak var vegetaImage2: UIImageView!
    @IBOutlet weak var vegetaImage3: UIImageView!
    //變身圖與文字
    @IBOutlet weak var changeImage: UIImageView!
    @IBOutlet weak var changeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func transformSlider(_ sender: UISlider) {
        
        let speed = sender.value * 10
        wukongImage.frame.origin.x = CGFloat(30+speed)
        vegetaImage.frame.origin.x = CGFloat(600-speed)
       
        if sender.value >= 2 {
            wukongImage.isHidden = true
            vegetaImage.isHidden = true
            wukong1Image.isHidden = false
            vegetaImage1.isHidden = false
            wukong1Image.frame.origin.x = CGFloat(80+speed)
            vegetaImage1.frame.origin.x = CGFloat(550-speed)
        }
        
        if sender.value >= 5 {
            wukong1Image.isHidden = true
            vegetaImage1.isHidden = true
            wukong3Image.isHidden = false
            vegetaImage2.isHidden = false
            wukong3Image.frame.origin.x = CGFloat(130+speed)
            vegetaImage2.frame.origin.x = CGFloat(550-speed)
        }
        
        if sender.value >= 8 {
    
            wukong3Image.isHidden = true
            wukong2Image.isHidden = false
            vegetaImage2.isHidden = true
            vegetaImage3.isHidden = false
            
            wukong2Image.frame.origin.x = CGFloat(160+speed)
            vegetaImage3.frame.origin.x = CGFloat(500-speed)
        }
        
        if sender.value >= 10 {
    
            wukong2Image.isHidden = true
            vegetaImage3.isHidden = true
            changeImage.isHidden = false
            changeLabel.isHidden = false
          
        }
        
    }
    
}

