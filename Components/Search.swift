//
//  Search.swift
//  test app
//
//  Created by عبد الملك الضاري on 26/08/1445 AH.
//

import SwiftUI

struct Search: View {
    @State private var search: String = ""
    var body: some View {
        HStack{
            HStack{
                Image(systemName: "magnifyingglass")
                    .padding(.leading)
                
                TextField("Search For Cards",  text: $search)
                    .padding( )
            }
            .background(Color("kSecondary "))
            .cornerRadius(12)
            
            Image(systemName: "camer")
                .padding()
                .foregroundColor(.white)
                .background(Color("kPrimary"))
                .cornerRadius(12)
        }
            .padding(.horizontal)
    }
}

#Preview {
    Search()
}
