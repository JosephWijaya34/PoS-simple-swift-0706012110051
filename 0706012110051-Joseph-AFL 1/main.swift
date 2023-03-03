//
//  main.swift
//  0706012110051-Joseph-AFL 1
//
//  Created by MacBook Pro on 28/02/23.
//

import Foundation

//var userInput: String = ""
//
//print("Your name? ")
//
//userInput = readLine()!
//
//print("User input: \(userInput)")

var choose : String?
var pilihMakanan : String?
var pilihJumlahMakanan : String?
var shoppingCart : [0,0,0,0]
let catalogueTuku = ["Tahu Isi" , "Nasi Campur" , "Nasi Kuning" , "Air Mineral"]
let hargaTuku = ["8000" , "12000" , "13000" , "3000"]


repeat{
    print("""
        welcome to UC-walk Cafetaria 👨🏻‍🍳👩🏻‍🍳
        Please choose cafetaria :
        
        [1] Tuku - Tuku
        [2] Gotri
        [3] Madam Lie
        [4] Kopte
        -
        [S] Shopping Cart
        [Q] Quit
        Your cafetaria choice ?
        """, terminator: " ")
    choose = readLine()?.lowercased()
    
    if(choose == "1"){
        print("Hi, Welcome back to Tuku - tuku!")
        print("What would you like to order?")
        print()
        var i = 0
        for makanan in catalogueTuku {
            print("[",1 + i,"]" , makanan)
            i+=1
        }
        print("""
        [B]ack to Main Menu
        
        Your menu choice ?
        """, terminator: " ")
        
        
        let pilihMakan = readLine()?.lowercased()
        if let _ = Int(pilihMakan!) {
            pilihMakanan = pilihMakan
            print()
            print(catalogueTuku[(Int(pilihMakanan!)!)-1] , hargaTuku[(Int(pilihMakanan!)!)-1])
            print()
            print("How many",catalogueTuku[(Int(pilihMakanan!)!)-1] ,"do you want to buy? ", terminator: " ")
            
            let pilihJumlahMakan = readLine()?.lowercased()
            if let _ = Int(pilihJumlahMakan!){
                pilihJumlahMakanan = pilihJumlahMakan
            }else{
                print("Input Must Number")
            }
        }else if pilihMakan == "b" {
            
        } else {
            print("invalid input")
        }
        
        //        if(pilihMakanan == "1"){
//        print(catalogueTuku[(Int(pilihMakanan!)!)-1])
        //        }
        
    } else if (choose == "2"){
        print("""
    Hi, Welcome back to Gotri!
    What would you like to order?
        
    [1] Gotri fried rice
    [2] Ayam Gotri
    [3] Nasi Goreng Oreo
    [4] Air Es
    -
    
    [B]ack to Main Menu
    Your menu choice ?
    """, terminator: " ")
    }else if (choose == "3"){
        
    }else if (choose == "4"){
        
    }else if (choose == "s"){
        if shoppingCart.isEmpty {
            print("Your cart is Empty")
        }
    }
}while choose != "q"



