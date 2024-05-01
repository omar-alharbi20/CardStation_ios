//
//  CartButtom.swift
//  test app
//
//  Created by عبد الملك الضاري on 27/08/1445 AH.
//

import SwiftUI

struct CartButtom: View {
    var numberOfProducts: Int
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "bag.fill")
                .foregroundColor(.black)
                .padding(5)
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2)
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(.green)
                    .cornerRadius(50)
            }
        }
    }
}

#Preview {
    CartButtom(numberOfProducts: 1)
}
