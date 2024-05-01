//
//  ProfilePage.swift
//  test app
//
//  Created by عبد الملك الضاري on 10/10/1445 AH.
//

import SwiftUI

struct ProfilePage: View {
    var body: some View {
        VStack {
            // صورة الملف الشخصي
            Image("fn7")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 5))
                .padding(.bottom, 20)
                .shadow(radius: 10) // إضافة ظل للصورة
            
            // اسم المستخدم
            Text("عبد الملك")
                .font(.title)
                .fontWeight(.bold) // زيادة سمك الخط
                .foregroundColor(.primary) // تحديد لون الخط
            
            // البريد الإلكتروني
            Text("user@gmail.com")
                .font(.headline)
                .foregroundColor(.secondary) // تحديد لون الخط الفرعي
                .padding(.bottom, 5)
            
            // رقم الهاتف الشخصي
            Text("0557775373")
                .font(.subheadline)
                .foregroundColor(.secondary) // تحديد لون الخط الفرعي
            
            Spacer()
        }
        .padding() // إضافة تباعد داخلي
        .background(Color.white) // تحديد لون الخلفية
        .cornerRadius(20) // إضافة زوايا مستديرة للصفحة
        .padding() // إضافة تباعد خارجي
        .shadow(radius: 20) // إضافة ظل للصفحة
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}

