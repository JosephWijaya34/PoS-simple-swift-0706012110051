//
//  Shop.swift
//  0706012110051-Joseph-AFL 1
//
//  Created by MacBook Pro on 03/04/23.
//

import Foundation

struct Shop {
    var name: String
    var listMenu: [Menu]
    
    init(_ name: String,_ listMenu: [Menu]) {
        self.name = name
        self.listMenu = listMenu
    }
}
