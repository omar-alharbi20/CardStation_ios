//
//  ImagesliderView.swift
//  test app
//
//  Created by عبد الملك الضاري on 26/08/1445 AH.
//

import SwiftUI

struct ImagesliderView: View {
    @State private var currentIndex = 0
    var sildes: [String] = ["fn1","fn2","fn3","fn4","fn5","fn6"]
    var body: some View {
        ZStack(alignment: .bottomLeading){
            ZStack(alignment: .trailing){
                Image(sildes[currentIndex])
                    .resizable()
                    .frame(width: .infinity, height: 180)
                    .scaledToFit()
                    .cornerRadius(15)
            }
            HStack{
                ForEach(0..<sildes.count){index in
                    Circle()
                        .fill(self.currentIndex == index ? Color("kPrimary") : Color("kSecondary"))
                        .frame(width: 10, height: 10)
                }
            }
            .padding()
        }
        .padding()
        .onAppear{
            Timer.scheduledTimer(withTimeInterval: 5, repeats: true){timer in
                if self.currentIndex + 1 == self.sildes.count{
                    self.currentIndex = 0
                }else{
                    self.currentIndex += 1
                }
            }
        }
          
    }
}

#Preview {
    ImagesliderView()
}
