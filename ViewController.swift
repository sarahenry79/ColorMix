//
//  ViewController.swift
//  ColorMixer
//
//  Created by Sara Bernard on 8/17/18.
//  Copyright © 2018 Sara Bernard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if redSwitch.isOn {
            red = 1
        }
        if greenwitch.isOn {
            green = 1
        }
        if blueSwitch.isOn {
        blue = 1
        }
    let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var greenwitch: UISwitch!
    
    @IBAction func swicthChanged(_ sender: Any) {
        if (sender as AnyObject).isOn {
          updateColor()
        }
}
}
