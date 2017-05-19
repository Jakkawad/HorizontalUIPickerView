//
//  Data.swift
//  HorizontalUIPickerView
//
//  Created by Jakkawad Chaiplee on 5/18/2560 BE.
//  Copyright © 2560 Jakkawad Chaiplee. All rights reserved.
//

import Foundation

class Data {
    class func getData() -> [DataModel] {
        var data = [DataModel]()
        data.append(DataModel(dayName: "Monday", price: "$100", date: "01 MAY"))
        data.append(DataModel(dayName: "Tuesday", price: "$99", date: "02 MAY"))
        data.append(DataModel(dayName: "Wednesday", price: "$98", date: "03 MAY"))
        data.append(DataModel(dayName: "Thursday", price: "$97", date: "04 MAY"))
        data.append(DataModel(dayName: "Friday", price: "$96", date: "05 MAY"))
        data.append(DataModel(dayName: "Saturday", price: "$95", date: "06 MAY"))
        data.append(DataModel(dayName: "Sunday", price: "$94", date: "07 MAY"))
        data.append(DataModel(dayName: "Monday", price: "$93", date: "08 MAY"))
        data.append(DataModel(dayName: "Tuesday", price: "$92", date: "09 MAY"))
        data.append(DataModel(dayName: "Wednesday", price: "$91", date: "10 MAY"))
        data.append(DataModel(dayName: "Thursday", price: "$90", date: "11 MAY"))
        data.append(DataModel(dayName: "Friday", price: "$89", date: "12 MAY"))
        data.append(DataModel(dayName: "Saturday", price: "$88", date: "13 MAY"))
        data.append(DataModel(dayName: "Sunday", price: "$87", date: "14 MAY"))
        return data
    }
}
