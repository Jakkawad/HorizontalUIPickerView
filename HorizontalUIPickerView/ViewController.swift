//
//  ViewController.swift
//  HorizontalUIPickerView
//
//  Created by Jakkawad Chaiplee on 5/18/2560 BE.
//  Copyright © 2560 Jakkawad Chaiplee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dateModelPicker: DateModelPicker!
    
    var rotationAngle: CGFloat!
    
    @IBOutlet weak var firstPicker: UIPickerView!
    @IBOutlet weak var lastPicker: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rotationAngle = -90 * (.pi/180)
        
        dateModelPicker = DateModelPicker()
        dateModelPicker.modelData = Data.getData()
        
        var y = firstPicker.frame.origin.y
        firstPicker.transform = CGAffineTransform(rotationAngle: rotationAngle)
        
        firstPicker.frame = CGRect(x: -100, y: y, width: view.frame.width + 200, height: 100)
        firstPicker.delegate = dateModelPicker
        firstPicker.dataSource = dateModelPicker
        
        y = lastPicker.frame.origin.y
        lastPicker.transform = CGAffineTransform(rotationAngle: rotationAngle)
        
        lastPicker.frame = CGRect(x: -100, y: y, width: view.frame.width + 200, height: 100)
        lastPicker.delegate = dateModelPicker
        lastPicker.dataSource = dateModelPicker
        lastPicker.selectRow(2, inComponent: 0, animated: true)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

