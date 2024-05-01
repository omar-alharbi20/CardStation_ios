//
//  Product.swift
//  test app
//
//  Created by عبد الملك الضاري on 26/08/1445 AH.
//

import Foundation


struct Product : Identifiable{
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var supplier: String
    var price: Int
    var width: String
    var height: String
    var diameter: String
}
    


var productList = [
    Product(name: "Xbox", image: "fn2", description: "Xbox game Card", supplier: "Store", price: 25, width: "200 cm ", height: "135 cm", diameter: "105 cm"),
    
    Product(name: "Sony", image: "fn3", description: "sony game Card", supplier: "Store", price: 50, width: "200 cm ", height: "135 cm", diameter: "105 cm"),
    
    Product(name: "iTunes", image: "fn1", description: "iTunes game Card", supplier: "Store", price: 100, width: "200 cm ", height: "135 cm", diameter: "105 cm"),
    
    Product(name: "Steam", image: "fn4", description: "Steam game Card ", supplier: "Store", price: 100, width: "200 cm ", height: "135 cm", diameter: "105 cm"),
    
    Product(name: "Google play", image: "fn5", description: "Google play Card", supplier: "Store", price: 25, width: "200 cm ", height: "135 cm", diameter: "105 cm"),
    
    Product(name: "Nintendo Switch", image: "fn6", description: "Nintendo Switch Card", supplier: "Store", price: 35, width: "200 cm ", height: "135 cm", diameter: "105 cm")
]
