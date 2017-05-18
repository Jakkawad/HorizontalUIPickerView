//
//  DataModel.swift
//  HorizontalUIPickerView
//
//  Created by Jakkawad Chaiplee on 5/18/2560 BE.
//  Copyright © 2560 Jakkawad Chaiplee. All rights reserved.
//

import Foundation

class DataModel {
    var dayName = ""
    var price = ""
    var date = ""
    
    init(dayName: String, price: String, date: String) {
        self.dayName = dayName
        self.price = price
        self.date = date
    }
}
