//
//  Test2.swift
//  Ex_CalendarApp
//
//  Created by cmStudent on 2024/08/06.
//

import SwiftUI

struct Test2: View {
    
    @Binding var num: Int
    
    var body: some View {
        Button(action: {
            num += 1
        }) {
            Text("２個目のView")
        }
    }
}

#Preview {
    Test2(num: .constant(0))
}
