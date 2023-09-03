//
//  ReservationCalendar.swift
//  MetaExerciseAddingControls
//
//  Created by Mitch Andrade on 9/3/23.
//

import SwiftUI

struct ReservationCalendar: View {
    
    @State var selectedDate = Date()
    
    var body: some View {
        Form {
            HStack {
                DatePicker(
                    selection: $selectedDate,
                    in: Date()...,
                    displayedComponents: [.date, .hourAndMinute]
                ) { }
                
                Button(action: { print("Do something!!")}) {
                    HStack {
                        Image(systemName: "arrow.right.circle")
                        Text("Done")
                    }
                }
                .padding(20)
            }
            Text("Date is \(selectedDate.formatted(date: .long, time: .complete))")
        }
    }
}

struct ReservationCalendar_Previews: PreviewProvider {
    static var previews: some View {
        ReservationCalendar()
    }
}
