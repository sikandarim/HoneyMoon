//
//  ContentView.swift
//  HoneyMoon
//
//  Created by Mariam Sikandari on 2023-11-13.
//

import SwiftUI

struct ContentView: View {
    @State var showAlert: Bool = false
    @State var showGuide: Bool = false
    var body: some View {
        VStack {
            HeaderView(showGuideView: $showGuide)
            Spacer()
           CardView(honeymoon: honeymoonData[4])
            //FIXME: Add padding to the cards later on.
                .padding()
            Spacer()
            
            FooterView(showBookingAlert: $showAlert)
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("SUCCESS"), message: Text("Wishing a lovely and most precious of the times together for the amazing couple."),dismissButton: .default(Text("Happy Honeymoon!")))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
