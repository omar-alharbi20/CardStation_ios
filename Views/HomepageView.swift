//
//  HomepageView.swift
//  test app
//
//  Created by عبد الملك الضاري on 28/08/1445 AH.
//

import SwiftUI

struct HomepageView: View {
    @EnvironmentObject var craManger: CraManger
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top){
                Color.white
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                   AppBar()
                    
                    
                    
                    ImagesliderView()
                    
                    HStack{
                        Text("New Rivals")
                            .font(.title2)
                            .fontWeight(.medium)
                        
                        Spacer()
                        
                        NavigationLink(destination: {
                            ProductsView()
                        }, label: {
                            Image(systemName: "circle.grid.2x2.fill")
                                .foregroundColor(Color("kPrimary"))
                        })
                    }
                    .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 10){
                            ForEach(productList, id: \.id){product in
                                    NavigationLink{
                                    ProductDetaillsView(product: product)
                                } label: {
                                    ProductCardView(product: product)
                                        .environmentObject(craManger)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                
            }
        }
          .environmentObject(craManger)
    }
    
}

#Preview {
    HomepageView()
        .environmentObject(CraManger())
}

struct AppBar: View {
    @EnvironmentObject var craManger: CraManger
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading){
                HStack{
                 
                    
                   
                    
                    Spacer()
                    
                    NavigationLink(destination: CartView()
                        .environmentObject(craManger)
                    ){
                        CartButtom(numberOfProducts: craManger.products.count)
                    }
                }
                Text(" CARD  ")
                    .font(.largeTitle .bold())
                
                + Text(" STATION")
                    .font(.largeTitle .bold())
                    .foregroundColor(Color("kPrimary"))
            }
        }
        .padding()
        .environmentObject(CraManger())
    }
}
