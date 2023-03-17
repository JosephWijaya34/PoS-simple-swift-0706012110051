//
//  main.swift
//  0706012110051-Joseph-AFL 1
//
//  Created by MacBook Pro on 28/02/23.
//

import Foundation

//
var choose : String?
var pilihMakanan : String?
var pilihJumlahMakanan : String?
var pilihMakan: String = ""
var pilih : String = ""
var uangUser : Int?
var change : Int?
var finish : String?

//array catalogue
let catalogueTuku = ["Tahu Isi" , "Nasi Campur" , "Nasi Kuning" , "Air Mineral" , "Juice"]
let hargaTuku = [8000 , 12000 , 13000 , 3000 , 10000]
let catalogueGotri = ["nasi Campur" , "Nasi Bakar" , "Nasi Goreng" , "Air Degan" , "Fruit tea"]
let hargaGotri = [30000 , 20000 , 20000 , 7000 ,8000]
let catalogueMadamLie = ["Nasi Ayam" , "Nasi Sayur" , "Nasi Bebek" , "Juice Buah" , "Sparkling water"]
let hargaMadamLie = [20000 , 18000 , 25000 , 10000 , 13000]
let catalogueKopte = ["Kopi Americano" , "Kopi latte" , "Croissant" , "Blend Coffe" , "capuccino"]
let hargaKopte = [15000 , 18000 , 15000 , 27000 , 30000]
let catalogueXiangJia = ["kaya toast" , "kaya toast special" , "kopi o" , "teh tarik jumbo" , "susu jahe"]
let hargaXiangJia = [15000 , 18000 , 15000 , 27000 , 18000]

//array cart
//data set
typealias cart = (shopName: String, namaMenu: String, harga: Int, qty:Int)
var cartList : [cart] = []

repeat{
    print("""
        welcome to UC-walk Cafetaria 👨🏻‍🍳👩🏻‍🍳
        Please choose cafetaria :
        
        [1] Tuku - Tuku
        [2] Gotri
        [3] Madam Lie
        [4] Kopte
        [5] Xiang Jia
        -
        [S] Shopping Cart
        [Q] Quit
        Your cafetaria choice ?
        """, terminator: " ")
    choose = readLine()?.lowercased()
    print()
    if(choose == "1"){
        catalogue(nama:"tuku-tuku")
    } else if (choose == "2"){
        catalogue(nama:"Gotri")
    }else if (choose == "3"){
        catalogue(nama:"Madam Lie")
    }else if (choose == "4"){
        catalogue(nama:"Kopte")
    }else if (choose == "5"){
        catalogue(nama:"Xiang Jia")
    }else if (choose == "s"){
        if cartList.isEmpty {
            print()
            print("Your cart is Empty")
            print()
        }else {
            repeat{
                var total : Int = 0
                
                for test in 0..<cartList.count{
                    if cartList[test].shopName == "tuku-tuku" {
                        print("Your order from Tuku - Tuku :")
                        for i in 0..<cartList.count {
                            if cartList[i].shopName == "tuku-tuku"{
                                print("- ", cartList[i].namaMenu, "x", cartList[i].qty)
                            }
                        }
                        break
                    }
                }
                for test2 in 0..<cartList.count {
                    if cartList[test2].shopName == "Gotri" {
                        print("Your order from Gotri :")
                        for i in 0..<cartList.count {
                            if cartList[i].shopName == "Gotri"{
                                print("- ", cartList[i].namaMenu, "x", cartList[i].qty)
                            }
                        }
                        break
                    }
                }
                for test3 in 0..<cartList.count {
                    if cartList[test3].shopName == "Madam Lie" {
                        print("Your order from Madam Lie :")
                        for i in 0..<cartList.count {
                            if cartList[i].shopName == "Madam Lie"{
                                print("- ", cartList[i].namaMenu, "x", cartList[i].qty)
                                }
                            }
                        break
                    }
                }
                for test4 in 0..<cartList.count {
                    if cartList[test4].shopName == "Kopte" {
                        print("Your order from Kopte :")
                        for i in 0..<cartList.count {
                            if cartList[i].shopName == "Kopte"{
                                print("- ", cartList[i].namaMenu, "x", cartList[i].qty)
                            }
                        }
                        break
                    }
                }
                for test5 in 0..<cartList.count {
                    if cartList[test5].shopName == "Xiang Jia" {
                        print("Your order from Xiang Jia :")
                        for i in 0..<cartList.count {
                            if cartList[i].shopName == "Xiang Jia"{
                                print("- ", cartList[i].namaMenu, "x", cartList[i].qty)
                            }
                        }
                        break
                    }
                }
                
                print("""
                      Press [B] to go back
                      Press [S] to pay / checkout
                      Your choice ?
                      """, terminator: "")
                choose = readLine()?.lowercased()
                print()
                
                if choose == "s" {
                    repeat{
                        for co in 0..<cartList.count {
                            total += (cartList[co].harga * cartList[co].qty)
                        }
                        print("Your total order : \(total)")
                        print("Enter the amount of your money : " , terminator: "")
                        pilih = readLine()!.lowercased()
                        if let _ = Int(pilih){
                            if Int(pilih) ?? 0 < 0 {
                                total = 0
                                print("please enter a valid amount")
                            } else if Int(pilih) ?? 0 < total{
                                total = 0
                                print("your money is not enough")
                            }else if Int(pilih) ?? 0 >= total{
                                repeat{
                                    uangUser = Int(pilih)
                                    change = uangUser! - total
                                    print("""
                                        Your total order : \(total)
                                        You pay : \(uangUser ?? 0)
                                        your change : \(change ?? 0)
                                        
                                        Enjoy your meals!
                                        press [return] to go back to main screen :
                                        """, terminator: "")
                                    finish = readLine()?.lowercased()
                                    
                                    if finish == "" {
                                        cartList.removeAll()
                                        choose = "b"
                                        break
                                    }else {
                                        print("Error Input")
                                    }
                                } while finish != ""
                                break
                            }
                        }else if pilih == "" {
                            total = 0
                            print("please enter your payment")
                        }else {
                            total = 0
                            print("Please enter a valid amount")
                        }
                    } while pilih != "Quit"
                }else if choose == "b" {
                    break
                } else {
                    print("Invalid Input")
                }
            } while choose != "b"
        }
    }else if choose == "q" {
        exit(0)
    }else{
        print("Invalid input or store not found")
    }
}while choose != "q"



public func catalogue(nama: String){
    print("Hi, Welcome back to ", nama , "!")
    print("What would you like to order?")
    print()
    var i = 0
    // tentuin catalogue yang mana
    if nama == "tuku-tuku" {
        repeat{
            i = 0
            for makanan in catalogueTuku {
                print("[",1 + i,"]" , makanan)
                i+=1
            }
            print("""
            [B]ack to Main Menu
            
            Your menu choice ?
            """, terminator: " ")
            pilihMakan = readLine()!.lowercased()
            if let _ = Int(pilihMakan) {
                // error handling
                if Int(pilihMakan) ?? 0 > catalogueTuku.count {
                    print("menu tidak ada")
                }else{
                    pilihMakanan = pilihMakan
                    print()
                    print(catalogueTuku[(Int(pilihMakanan!)!)-1] , hargaTuku[(Int(pilihMakanan!)!)-1])
                    print()
                    print("How many",catalogueTuku[(Int(pilihMakanan!)!)-1] ,"do you want to buy? ", terminator: " ")
                    
                    let pilihJumlahMakan = readLine()?.lowercased()
                    if let intJumlah = Int(pilihJumlahMakan!){
                        if intJumlah <= 0 {
                            print("input cant be 0 or less")
                        }else {
                            buy(shopName: nama,namaMenu: catalogueTuku[(Int(pilihMakanan!)!)-1],harga: hargaTuku[(Int(pilihMakanan!)!)-1], qty: intJumlah)
                            break
                        }
                    } else {
                        print("Input Must Number")
                    }
                }
            }else {
                print("invalid input")
            }
        } while pilihMakan != "b"
    }else if nama == "Gotri" {
        repeat {
            i = 0
            for makanan in catalogueGotri {
                print("[",1 + i,"]" , makanan)
                i+=1
            }
            print("""
            [B]ack to Main Menu
            
            Your menu choice ?
            """, terminator: " ")
            pilihMakan = readLine()!.lowercased()
            if let _ = Int(pilihMakan) {
                pilihMakanan = pilihMakan
                print()
                print(catalogueGotri[(Int(pilihMakanan!)!)-1] , hargaGotri[(Int(pilihMakanan!)!)-1])
                print()
                print("How many",catalogueGotri[(Int(pilihMakanan!)!)-1] ,"do you want to buy? ", terminator: " ")
                
                let pilihJumlahMakan = readLine()?.lowercased()
                if let intJumlah = Int(pilihJumlahMakan!){
                    if intJumlah <= 0 {
                        print("input cant be 0 or less")
                    }else {
                        buy(shopName: nama,namaMenu: catalogueGotri[(Int(pilihMakanan!)!)-1],harga: hargaGotri[(Int(pilihMakanan!)!)-1], qty: intJumlah)
                        break
                    }
                }else{
                    print("Input Must Number")
                }
            } else {
                print("invalid input")
            }
        } while pilihMakan != "b"
    }else if nama == "Madam Lie" {
        repeat {
            i = 0
            for makanan in catalogueMadamLie {
                print("[",1 + i,"]" , makanan)
                i+=1
            }
            print("""
            [B]ack to Main Menu
            
            Your menu choice ?
            """, terminator: " ")
            pilihMakan = readLine()!.lowercased()
            if let _ = Int(pilihMakan) {
                pilihMakanan = pilihMakan
                print()
                print(catalogueMadamLie[(Int(pilihMakanan!)!)-1] , hargaMadamLie[(Int(pilihMakanan!)!)-1])
                print()
                print("How many",catalogueMadamLie[(Int(pilihMakanan!)!)-1] ,"do you want to buy? ", terminator: " ")
                
                let pilihJumlahMakan = readLine()?.lowercased()
                if let intJumlah = Int(pilihJumlahMakan!){
                    if intJumlah <= 0 {
                        print("input cant be 0 or less")
                    }else {
                        buy(shopName: nama,namaMenu: catalogueMadamLie[(Int(pilihMakanan!)!)-1],harga: hargaMadamLie[(Int(pilihMakanan!)!)-1], qty: intJumlah)
                        break                    }
                }else{
                    print("Input Must Number")
                }
            } else {
                print("invalid input")
            }
        } while pilihMakan != "b"
    }else if nama == "Kopte" {
        repeat {
            i = 0
            for makanan in catalogueKopte {
                print("[",1 + i,"]" , makanan)
                i+=1
            }
            print("""
            [B]ack to Main Menu
            
            Your menu choice ?
            """, terminator: " ")
            pilihMakan = readLine()!.lowercased()
            if let _ = Int(pilihMakan) {
                pilihMakanan = pilihMakan
                print()
                print(catalogueKopte[(Int(pilihMakanan!)!)-1] , hargaKopte[(Int(pilihMakanan!)!)-1])
                print()
                print("How many",catalogueKopte[(Int(pilihMakanan!)!)-1] ,"do you want to buy? ", terminator: " ")
                
                let pilihJumlahMakan = readLine()?.lowercased()
                if let intJumlah = Int(pilihJumlahMakan!){
                    if intJumlah <= 0 {
                        print("input cant be 0 or less")
                    }else {
                        buy(shopName: nama,namaMenu: catalogueKopte[(Int(pilihMakanan!)!)-1],harga: hargaKopte[(Int(pilihMakanan!)!)-1], qty: intJumlah)
                        break
                    }
                }else{
                    print("Input Must Number")
                }
            } else {
                print("invalid input")
            }
        } while pilihMakan != "b"
    }else if nama == "Xiang Jia" {
        repeat {
            i = 0
            for makanan in catalogueXiangJia {
                print("[",1 + i,"]" , makanan)
                i+=1
            }
            print("""
            [B]ack to Main Menu
            
            Your menu choice ?
            """, terminator: " ")
            pilihMakan = readLine()!.lowercased()
            if let _ = Int(pilihMakan) {
                pilihMakanan = pilihMakan
                print()
                print(catalogueXiangJia[(Int(pilihMakanan!)!)-1] , hargaXiangJia[(Int(pilihMakanan!)!)-1])
                print()
                print("How many",catalogueXiangJia[(Int(pilihMakanan!)!)-1] ,"do you want to buy? ", terminator: " ")
                
                let pilihJumlahMakan = readLine()?.lowercased()
                if let intJumlah = Int(pilihJumlahMakan!){
                    if intJumlah <= 0 {
                        print("input cant be 0 or less")
                    }else {
                        buy(shopName: nama,namaMenu: catalogueXiangJia[(Int(pilihMakanan!)!)-1],harga: hargaXiangJia[(Int(pilihMakanan!)!)-1], qty: intJumlah)
                        break
                    }
                }else{
                    print("Input Must Number")
                }
            }else if pilihMakan == "b" {
                
            } else {
                print("invalid input")
            }
        } while pilihMakan != "b"
    }
}

public func buy(shopName: String, namaMenu: String, harga: Int, qty:Int){
    let tempOrder : cart = (shopName, namaMenu, harga, qty)
    var check = false
    for (index, _) in cartList.enumerated(){
         if cartList[index].shopName == tempOrder.shopName && cartList[index].namaMenu == tempOrder.namaMenu {
             cartList[index].qty += tempOrder.qty
             check = true
        }
    }
    if(!check){
        cartList.append(tempOrder)
    }
}

//print("Hi, Welcome back to Tuku - tuku!")
//print("What would you like to order?")
//print()
//var i = 0
//for makanan in catalogueTuku {
//    print("[",1 + i,"]" , makanan)
//    i+=1
//}
//print("""
//[B]ack to Main Menu
//
//Your menu choice ?
//""", terminator: " ")
//
//
//let pilihMakan = readLine()?.lowercased()
//if let _ = Int(pilihMakan!) {
//    pilihMakanan = pilihMakan
//    print()
//    print(catalogueTuku[(Int(pilihMakanan!)!)-1] , hargaTuku[(Int(pilihMakanan!)!)-1])
//    print()
//    print("How many",catalogueTuku[(Int(pilihMakanan!)!)-1] ,"do you want to buy? ", terminator: " ")
//
//    let pilihJumlahMakan = readLine()?.lowercased()
//    if let _ = Int(pilihJumlahMakan!){
//        pilihJumlahMakanan = pilihJumlahMakan
//
//    }else{
//        print("Input Must Number")
//    }
//}else if pilihMakan == "b" {
//
//} else {
//    print("invalid input")
//}
