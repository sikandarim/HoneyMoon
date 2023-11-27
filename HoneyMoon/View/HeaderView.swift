//
//  HeaderView.swift
//  HoneyMoon
//
//  Created by Mariam Sikandari on 2023-11-13.
//

import SwiftUI

struct HeaderView: View {
    
    @Binding var showGuideView: Bool
    var body: some View {
        HStack {
            Button(action: {
                //Action
              
            }) {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .accentColor(Color.primary)
            
            
            Spacer()
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            
            Spacer()
            
            Button(action: {
                self.showGuideView.toggle()
              
            }) {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .accentColor(Color.primary)
            .sheet(isPresented: $showGuideView) {
                GuideView()
            }
        }
        .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(showGuideView: .constant(false))
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
