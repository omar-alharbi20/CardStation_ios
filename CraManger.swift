//
//  CraManger.swift
//  test app
//
//  Created by عبد الملك الضاري on 27/08/1445 AH.
//

import Foundation


class CraManger: ObservableObject{
    @Published private(set) var products: [Product] = []
    
    @Published private(set) var total: Int = 0
    
    func addToCart(product: Product){
        products.append(product)
        total += product.price
    }
  
    func removeFromCart(product: Product){
        products = products.filter{ $0.id != product.id}
        total -= product.price
    }
}
