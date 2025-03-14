//
//  ContentView.swift
//  Ex_CalendarApp
//
//  Created by cmStudent on 2024/08/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            HStack {
                ForEach (1 ... 7, id: \.self) { num in
                    Text("\(num)")
                }
            }
            HStack {
                ForEach (8 ... 14, id: \.self) { num in
                    Text("\(num)")
                }
            }
            HStack {
                ForEach (15 ... 21, id: \.self) { num in
                    Text("\(num)")
                }
            }
            HStack {
                ForEach (22 ... 28, id: \.self) { num in
                    Text("\(num)")
                }
            }
            HStack {
                ForEach (29 ... 31, id: \.self) { num in
                    Text("\(num)")
                }
            }
        }
        .background(.white)
        .shadow(color: .gray, radius: 5, x: 0,y: 10)
    }
}

#Preview {
    ContentView()
}
