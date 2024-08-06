//
//  Sample01View.swift
//  Ex_CalendarApp
//
//  Created by cmStudent on 2024/08/06.
//

import SwiftUI

struct Sample01View: View {
    @State var isButton: Bool = false
    @State var isToggle: Bool = false
    @State var isView: Bool = false
    
//    @State var num:Int = 0
    @AppStorage("number") private var num:Int = 0
    
    var body: some View {
        Toggle(isOn: $isView) {
            Text("\(num)")
        }
        
        VStack {
            if isView {
                Button(action: {
                    isButton.toggle()
                    
                }) {
                    Text("Hello, World!")
                }
                .sheet(isPresented: $isButton) {
                    Test2(num: $num)
                }
                
                VStack {
                    Text("Hello, World!")
                    
                    Text("Hello, World!")
                    
                    Text("Hello, World!")
                }
                
            }
        }
        .frame(height:100)
        
    }
    private func plus() {
        num += 1
    }
}

#Preview {
    Sample01View()
}
