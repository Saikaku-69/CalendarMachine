//
//  SampleView01.swift
//  Ex_CalendarApp
//
//  Created by cmStudent on 2024/08/02.
//

import SwiftUI

struct SampleView01: View {
    @State var isHome:Bool = false
    
    let calendar = Calendar.current
    let dateFormatter: DateFormatter = {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "d"
        return formatter
        
    } ()
    
    var body: some View {
        let currentDate = Date()
        let monthRange = calendar.range(of: .day, in: .month, for: currentDate)!
        let days = monthRange.compactMap { day -> Date? in
            return calendar.date(byAdding: .day, value: day - 1, to: calendar.startOfDay(for: currentDate))
        }
        
        return VStack {
            Text("カレンダー")
            
            ForEach(0..<days.count / 7) { week in
                HStack {
                    ForEach(0..<7) { day in
                        if let date = days[safe: week * 7 + day] {
                            Text(dateFormatter.string(from: date))
                                .frame(maxWidth: .infinity)
                                .padding(5)
                        }
                    }
                }
            }
            Button(action: {
                isHome = true
            }) {
                Text("home")
            }
        }
        .padding()
        .background(Color.white)
        .shadow(color: .gray, radius: 5, x: 0, y: 10)
        .fullScreenCover(isPresented: $isHome) {
            Sample01View()
        }
    }
}

extension Collection {
    subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

#Preview {
    SampleView01()
}
