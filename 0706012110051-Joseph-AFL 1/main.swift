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
var pilihMakan: String = ""

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
var jumlahCart: [Int] = []
var hargaCart: [Int] = []
var namaItemCart: [String] = []
var namaToko: [String] = []

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
        if jumlahCart.isEmpty && hargaCart.isEmpty && namaItemCart.isEmpty {
            print()
            print("Your cart is Empty")
            print()
        }else {
            var index = 0
            if namaToko[index] == "tuku-tuku"{
                
            }else if namaToko[index] == "Gotri"{
                
            }else if namaToko[index] == "Madam Lie"{
                
            }else if namaToko[index] == "Kopte"{
                
            }else if namaToko[index] == "Xiang Jia"{
                
            }
//            if tempat == "tuku-tuku" {
//                print("Your order from tuku - tuku : ")
//                print("-", namaItemCart[index], "x", jumlahCart[index])
//                index+=1
//                print()
//            }else if tempat == "Gotri" {
//
//            }else if tempat == "Madam Lie" {
//
//            }else if tempat == "Kopte" {
//
//            }else if tempat == "Xiang Jia" {
//
//            }
        }
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
                pilihMakanan = pilihMakan
                print()
                print(catalogueTuku[(Int(pilihMakanan!)!)-1] , hargaTuku[(Int(pilihMakanan!)!)-1])
                print()
                print("How many",catalogueTuku[(Int(pilihMakanan!)!)-1] ,"do you want to buy? ", terminator: " ")
                
                let pilihJumlahMakan = readLine()?.lowercased()
                if let intJumlah = Int(pilihJumlahMakan!){
                    jumlahCart.append(intJumlah)
                    namaItemCart.append(catalogueTuku[(Int(pilihMakanan!)!)-1])
                    hargaCart.append(hargaTuku[(Int(pilihMakanan!)!)-1])
                    namaToko.append(nama)
                    break
                } else {
                    print("Input Must Number")
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
                    jumlahCart.append(intJumlah)
                    namaItemCart.append(catalogueGotri[(Int(pilihMakanan!)!)-1])
                    hargaCart.append(hargaGotri[(Int(pilihMakanan!)!)-1])
                    namaToko.append(nama)
                    break
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
                    jumlahCart.append(intJumlah)
                    namaItemCart.append(catalogueMadamLie[(Int(pilihMakanan!)!)-1])
                    hargaCart.append(hargaMadamLie[(Int(pilihMakanan!)!)-1])
                    namaToko.append(nama)
                    break
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
                    jumlahCart.append(intJumlah)
                    namaItemCart.append(catalogueKopte[(Int(pilihMakanan!)!)-1])
                    hargaCart.append(hargaKopte[(Int(pilihMakanan!)!)-1])
                    namaToko.append(nama)
                    break
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
                    jumlahCart.append(intJumlah)
                    namaItemCart.append(catalogueXiangJia[(Int(pilihMakanan!)!)-1])
                    hargaCart.append(hargaXiangJia[(Int(pilihMakanan!)!)-1])
                    namaToko.append(nama)
                    break
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
