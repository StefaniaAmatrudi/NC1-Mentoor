//
//  DateValue.swift
//  Fake_mentoor
//
//  Created by Stefania Amatrudi on 22/11/22.
//

import SwiftUI

//Date Valure Model

struct DateValue: Identifiable{
    var id = UUID().uuidString
    var day: Int
    var date: Date
}
