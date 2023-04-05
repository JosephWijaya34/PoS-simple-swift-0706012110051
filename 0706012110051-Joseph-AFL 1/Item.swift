//
//  Item.swift
//  0706012110051-Joseph-AFL 1
//
//  Created by MacBook Pro on 31/03/23.
//

import Foundation

public class Item: Menu{
    var quantity: Int
    
    init(_ nama: String, _ harga: Int,_ toko: String, _ quantity: Int) {
        self.quantity = quantity
        super.init(nama, harga, toko)
    }
}
