//
//  CartView.swift
//  test app
//
//  Created by عبد الملك الضاري on 28/08/1445 AH.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var craManger: CraManger
    var body: some View {
        ScrollView{
            if craManger.products.count > 0{
                ForEach(craManger.products, id: \.id){product in
                    CartProductView(product: product)
                }
                HStack{
                    Text("Your Total is ")
                    Spacer()
                    Text("$\(craManger.total).00")
                        .bold()
                    
                    
                }
                .padding()
                
                PaymentButton(action: {})
                    .padding()
            }else{
                
                Text("You Cart is Empty")
                
            }
            
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

#Preview {
    CartView()
        .environmentObject(CraManger())
}
