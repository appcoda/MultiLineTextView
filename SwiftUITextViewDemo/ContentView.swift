//
//  ContentView.swift
//  SwiftUITextViewDemo
//
//  Created by Simon Ng on 7/5/2020.
//  Copyright © 2020 AppCoda. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = ""
    @State private var textStyle = UIFont.TextStyle.body
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            TextView(text: $message, textStyle: $textStyle)
                .padding(.horizontal)
            
            Button(action: {
                self.textStyle = (self.textStyle == .body) ? .title1 : .body
            }) {
                Image(systemName: "textformat")
                    .imageScale(.large)
                    .frame(width: 40, height: 40)
                    .foregroundColor(.white)
                    .background(Color.purple)
                    .clipShape(Circle())
                
            }
            .padding()    
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
