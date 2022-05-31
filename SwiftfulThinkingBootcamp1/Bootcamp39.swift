//
//  Bootcamp39.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-28.
//

import SwiftUI

// DatePicker
struct Bootcamp39: View {
    
    @State var date: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year:2000)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium  //.short // .long //.full
        formatter.timeStyle = .short
        return formatter
    }
    
    
    var body: some View {
        VStack{
            Text("Selected date is: ")
            //Text(date.description)
            Text(dateFormatter.string(from: date))
                .font(.headline)
            
            //DatePicker("Select a date", selection: $date)
            //DatePicker("Select a date", selection: $date, displayedComponents: [.date, .hourAndMinute])
            DatePicker("Select a date", selection: $date, in: startingDate...endingDate)
                .accentColor(Color.red)
                .datePickerStyle(
                    CompactDatePickerStyle()
                    //GraphicalDatePickerStyle()
                    //WheelDatePickerStyle()
                )
            
        }
    }
}

struct Bootcamp39_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp39()
    }
}
