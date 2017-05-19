//
//  DateModelPicker.swift
//  HorizontalUIPickerView
//
//  Created by Jakkawad Chaiplee on 5/18/2560 BE.
//  Copyright © 2560 Jakkawad Chaiplee. All rights reserved.
//

import UIKit

class DateModelPicker: UIPickerView , UIPickerViewDataSource, UIPickerViewDelegate {
    
    var modelData: [DataModel]!
    let customWidth: CGFloat = 100
    let customHight: CGFloat = 100
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return modelData.count
    }
    
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return modelData[row].price
//    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return customHight
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: customHight))
        let topLabel = UILabel(frame: CGRect(x: 0, y: 0, width: customWidth, height: 15))
        topLabel.text = modelData[row].dayName
//        topLabel.textColor = UIColor.white
        topLabel.textAlignment = .center
        topLabel.font = UIFont.systemFont(ofSize: 14, weight: UIFontWeightThin)
        view.addSubview(topLabel)
        
        let middleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: customWidth, height: customHight))
        middleLabel.text = modelData[row].price
        middleLabel.textAlignment = .center
        middleLabel.font = UIFont.systemFont(ofSize: 42, weight: UIFontWeightThin)
        view.addSubview(middleLabel)
        
        let bottomLabel = UILabel(frame: CGRect(x: 0, y: 78, width: customWidth, height:15))
        bottomLabel.text = modelData[row].date
        bottomLabel.textAlignment = .center
        bottomLabel.font = UIFont.systemFont(ofSize: 14, weight: UIFontWeightThin)
        view.addSubview(bottomLabel)
        
        view.transform = CGAffineTransform(rotationAngle: (90 * (.pi/180)))
        return view
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        NotificationCenter.default.post(name: .pickersChanged, object: self)
        
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
