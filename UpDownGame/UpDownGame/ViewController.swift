//
//  ViewController.swift
//  HelloWorld
//
//  Created by 배성환 on 2021/05/03.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
//         Do any additional setup after loading the view.
        
        slider.setThumbImage(#imageLiteral(resourceName: "slider_thumb"), for: .normal)
        slider.value = 15
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }

    @IBAction func touchUpHitButton(_ sender: UIButton) {
        print(slider.value)
    }
    
    @IBAction func touchUpResetButton(_ sender: UIButton) {
        print("touch up reset button")
    }
    
}

