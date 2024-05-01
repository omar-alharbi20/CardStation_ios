//
//  ProductsView.swift
//  test app
//
 // Created by عبد الملك الضاري on 28/08/1445 AH.


import SwiftUI

struct ProductsView: View {
    @EnvironmentObject var craManger: CraManger
    
    var colum = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: colum, spacing: 20 ){
                   ForEach(productList, id: \.id){product in
                        ProductCardView(product: product)
                    }
                }
                .padding()
                    
                
            }
            
        }
    }
}

#Preview {
   ProductsView()
       .environmentObject(CraManger())
}
