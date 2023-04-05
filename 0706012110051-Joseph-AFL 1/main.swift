//
//  main.swift
//  0706012110051-Joseph-AFL 1
//
//  Created by MacBook Pro on 28/02/23.
//

import Foundation

//Array
var namaToko: [String] = ["Tuku-Tuku","Gotri","Madam Lie","Kopte","Xiang Jia"]
var menuMakanan: [Menu] = []
var showStoreMenu: [Menu] = []

//Tuku - tuku
menuMakanan.append(Menu("Tahu Isi", 5_000, namaToko[0]))
menuMakanan.append(Menu("Nasi Campur", 17_000, namaToko[0]))
menuMakanan.append(Menu("Nasi Kuning", 17_000, namaToko[0]))
menuMakanan.append(Menu("Air Mineral", 4_000, namaToko[0]))
menuMakanan.append(Menu("Onigiri", 10_000, namaToko[0]))
//Gotri
menuMakanan.append(Menu("Nasi Uduk", 20_000, namaToko[1]))
menuMakanan.append(Menu("Nasi Bakar", 22_000, namaToko[1]))
menuMakanan.append(Menu("Nasi Goreng", 20_000, namaToko[1]))
menuMakanan.append(Menu("Es Degan", 10_000, namaToko[1]))
menuMakanan.append(Menu("Es Buah", 15_000, namaToko[1]))
//Madam lie
menuMakanan.append(Menu("Nasi Ayam", 20_000, namaToko[2]))
menuMakanan.append(Menu("Nasi Sayur", 20_000, namaToko[2]))
menuMakanan.append(Menu("Nasi Bebek", 25_000, namaToko[2]))
menuMakanan.append(Menu("Juice Buah", 10_000, namaToko[2]))
menuMakanan.append(Menu("Air Soda", 8_000, namaToko[2]))
//Kopte
menuMakanan.append(Menu("Kopi Americano", 15_000, namaToko[3]))
menuMakanan.append(Menu("Kopi Latte", 18_000, namaToko[3]))
menuMakanan.append(Menu("Blended Coffe", 25_000, namaToko[3]))
menuMakanan.append(Menu("Cappucino", 20_000, namaToko[3]))
menuMakanan.append(Menu("Croissant", 15_000, namaToko[3]))
//Xiang Jia
menuMakanan.append(Menu("Kaya Toast", 15_000, namaToko[4]))
menuMakanan.append(Menu("Kaya Toast Special", 18_000, namaToko[4]))
menuMakanan.append(Menu("Kopi O", 10_000, namaToko[4]))
menuMakanan.append(Menu("Teh Tarik", 12_000, namaToko[4]))
menuMakanan.append(Menu("Susu Jahe", 12_000, namaToko[4]))
// variable
var shoppingCart: Cart = Cart()
var choose : String?
var x: Int = 0
var pilihMakan: String = ""
var pilih: String = ""
var totalBelanjaan: Int = 0
var uangUser : Int?
var change : Int?
var finish: String = ""

// main proggram
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
    switch choose {
    case "1":
        catalogueMenu(namaToko[0])
    case "2":
        catalogueMenu(namaToko[1])
    case "3":
        catalogueMenu(namaToko[2])
    case "4":
        catalogueMenu(namaToko[3])
    case "5":
        catalogueMenu(namaToko[4])
    case "s":
        repeat{
            showCart()
            shoppingCart.pemanisTampilanCart()
//            print("""
//                Press [B] to go back
//                Press [S] to pay / checkout
//                Your choice ?
//                """, terminator: " ")
            choose = readLine()?.lowercased()
            print()
            if shoppingCart.listItem.isEmpty{
                switch choose {
                case "b":
                    break
                default:
                    print("Invalid Input")
                }
            }else{
                switch choose {
                case "s":
                    repeat{
                        totalBelanjaan = shoppingCart.totalBelanjaan()
                        print("""
                            Your total order : Rp. \(totalBelanjaan)
                            Enter the amount of your money :
                            """, terminator: " ")
                        pilih = readLine()!.lowercased()
                        if let _ = Int(pilih){
                            if Int(pilih) ?? 0 < 0 {
                                print("please enter a valid amount")
                            } else if Int(pilih) ?? 0 < totalBelanjaan{
                                print("your money is not enough")
                            }else if Int(pilih) ?? 0 >= totalBelanjaan{
                                repeat{
                                    uangUser = Int(pilih)
                                    change = uangUser! - totalBelanjaan
                                    print("""
                                        Your total order : \(totalBelanjaan)
                                        You pay : \(uangUser ?? 0)
                                        your change : \(change ?? 0)
                                                                
                                        Enjoy your meals!
                                        press [return] to go back to main screen :
                                        """, terminator: " ")
                                    finish = readLine()?.lowercased() ?? ""
                                    
                                    if finish == "" {
                                        choose = "b"
                                        shoppingCart.reset()
                                        break
                                    }else {
                                        print("Error Input")
                                    }
                                } while finish != ""
                                        break
                                    }
                                }else if pilih == "" {
                                print("please enter your payment")
                                }else {
                                print("Please enter a valid amount")
                                }
                    }while pilih != "Quit"
                case "b":
                    break
                default:
                    print("invalid Input")
                }
            }
        }while choose != "b"
    case "q":
        print("Come back soon!")
        exit(0)
    default:
        print("Invalid input or store not found")
        print()
    }
}while choose != "q"





//function main
public func catalogueMenu (_ namaToko: String){
    repeat{
        showStoreMenu.removeAll()
        // pindah array
        for makanan in menuMakanan{
            if makanan.namaShop == namaToko{
                showStoreMenu.append(makanan)
            }
        }
        print("""
            Hi Welcome back to \(namaToko)!
            What would you like to order?
            
            """)
        x = 0
        for i in showStoreMenu{
            if i.namaShop == namaToko{
                print("[\(x + 1)] \(i.namaMakanan)")
                x += 1
            }
        }
        print("""
            -
            [B]ack to Main Menu
            Your Menu Choice ?
            """ , terminator: " ")
        pilihMakan = readLine()!.lowercased()
        print()
        if let _ = Int(pilihMakan) {
            if Int(pilihMakan) ?? 0 > showStoreMenu.count{
                print("Menu tidak tersedia")
            }else{
                repeat{
                    print("""
                        \(showStoreMenu[(Int(pilihMakan)!)-1].namaMakanan) @ \(showStoreMenu[(Int(pilihMakan)!)-1].harga)
                        How many \(showStoreMenu[(Int(pilihMakan)!)-1].namaMakanan) do you want to buy ?
                        """, terminator: " ")
                    
                    let pilihJumlahMakan = readLine()?.lowercased()
                    if let intJumlah = Int(pilihJumlahMakan!){
                        if intJumlah <= 0 {
                            print("input cant be 0 or less")
                        }else {
                            
                            //simpan data sementara
                            let namaMakanan = showStoreMenu[(Int(pilihMakan)!)-1].namaMakanan
                            let hargaMakanan = showStoreMenu[(Int(pilihMakan)!)-1].harga
                            let namaToko = showStoreMenu[(Int(pilihMakan)!)-1].namaShop
                            let qty = intJumlah
                            
                            shoppingCart.addItem(Item(namaMakanan, hargaMakanan, namaToko, qty))
                            print("Thank you for ordering.")
                            print()
                            showStoreMenu.removeAll()
                            break
                        }
                    } else {
                        print("Input Must Number")
                        print()
                    }
                }while pilihMakan != "b"
                break
            }
        }else if pilihMakan == ""{
            print("Input can't be empty")
            print()
        }else{
            print("Invalid Input")
            print()
        }
    }while pilihMakan != "b"
}

// function show shopping cart
func showCart()  {
    if shoppingCart.listItem.isEmpty {
        print("Your cart is empty.")
        print()
    }
    
    var storeCart: [String: [String: Int]] = [:]
    for item in shoppingCart.listItem {
        if storeCart[item.namaShop] == nil {
                storeCart[item.namaShop] = [item.namaMakanan: item.quantity]
            } else if storeCart[item.namaShop]![item.namaMakanan] == nil {
                storeCart[item.namaShop]![item.namaMakanan] = item.quantity
            } else {
                storeCart[item.namaShop]![item.namaMakanan]! += item.quantity
            }
        }

    for (storeName, items) in storeCart {
        print("Your order from \(storeName):")
        for (namaMakanan, quantity) in items {
            print("- \(namaMakanan) x\(quantity)")
        }
    }
    print()
}
