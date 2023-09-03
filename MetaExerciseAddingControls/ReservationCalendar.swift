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
                DatePicker("", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
            }
        }
    }
}

struct ReservationCalendar_Previews: PreviewProvider {
    static var previews: some View {
        ReservationCalendar()
    }
}
