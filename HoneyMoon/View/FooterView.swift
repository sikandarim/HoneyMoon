//
//  FooterView.swift
//  HoneyMoon
//
//  Created by Mariam Sikandari on 2023-11-13.
//

import SwiftUI

struct FooterView: View {
    @Binding var showBookingAlert: Bool
    var body: some View {
        HStack {
            Image(systemName: "xmark.circle")
                .font(.system(size: 42, weight: .light))
            Spacer()
            
            Button(action: {
                self.showBookingAlert.toggle()
            }) {
                Text("Book Destination".uppercased())
                    .font(.system(.subheadline, design: .rounded))
                    .fontWeight(.heavy)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 12)
                    .accentColor(Color.pink)
                    .background(
                        Capsule().stroke(Color.pink, lineWidth: 2)
                    )
            }
            
            Spacer()
            
            Image(systemName: "heart.circle")
                .font(.system(size: 42, weight: .light))
            
        }
     
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView(showBookingAlert: .constant(true))
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
