//
//  Cart.swift
//  0706012110051-Joseph-AFL 1
//
//  Created by MacBook Pro on 03/04/23.
//

import Foundation
//protocol (Interface)
protocol CartFunction{
    func addItem (_ addItem: Item)
    func reset ()
}

public class Cart: CartFunction {
    var listItem: [Item] = []
    var total: Int = 0
    
    //constructor kosong
    init(){
    }
    
    init(_ listItem: [Item],_ totalHarga: Int) {
        self.listItem = listItem
        self.total = totalHarga
    }
    
    func addItem (_ addItem: Item){
        if listItem.isEmpty{
            listItem.append(addItem)
        }else{
            var check = false
            for item in listItem {
                if item.namaMakanan == addItem.namaMakanan && item.namaShop == addItem.namaShop && item.harga == addItem.harga{
                    item.quantity += addItem.quantity
                    check = true
                    break
                }
            }
            if(!check){
                listItem.append(addItem)
            }
            
        }
    }
    
    func reset (){
        listItem.removeAll()
    }
    
    func totalBelanjaan () -> Int {
        var totalPesanan: Int = 0
        
        for item in listItem {
            totalPesanan += item.quantity * item.harga
        }
        
        return totalPesanan
    }
    
    
}
