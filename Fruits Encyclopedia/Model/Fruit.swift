//
//  Fruit.swift
//  Fruits Encyclopedia
//
//  Created by BJIT on 2021/05/26.
//

import SwiftUI

//MARK:- Data Model

struct Fruit:Identifiable {
    var id = UUID()
    let title:String
    let headline:String
    let image:String
    let gradientColors:[Color]
    let description:String
    var nutrition:[String]
}

