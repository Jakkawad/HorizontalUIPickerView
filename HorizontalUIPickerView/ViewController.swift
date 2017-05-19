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
    
    @IBOutlet weak var lblTotal: UILabel!
    
    func pickerChanged() {
        let first = firstPicker.selectedRow(inComponent: 0)
        let last = lastPicker.selectedRow(inComponent: 0)
        var totalPrice: Int = 0
        
        let selectedDates = dateModelPicker.modelData[first..<last + 1]
        for date in selectedDates {
            let priceString = date.price.replacingOccurrences(of: "$", with: "")
            totalPrice += Int(priceString)!
        }
        
        lblTotal.text = "$\(totalPrice)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(pickerChanged), name: .pickersChanged, object: nil)
        
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

//extension ViewController: UIPickerViewDelegate {
//    
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
////        print(modelData[row].price)
//        if pickerView == firstPicker {
//            print("first")
//        } else if lastPicker == lastPicker {
//            print("last")
//        } else {
//            print("error")
//        }
//        
//        
//    }
//}
