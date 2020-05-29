import SwiftUI

struct PerDay: View {
    private var weekDays = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    var body: some View {
        VStack {
            ForEach(0..<9) { i in
                if i < 7 {
                    DayView(weekDay: self.weekDays[i])
                } else {
                    DayView(weekDay: self.weekDays[i - 7])
                }
            }
        }
        .padding(.horizontal)
    }
}

struct DayView: View {
    var weekDay: String
    var body: some View {
        ZStack {
            HStack {
                Text(weekDay)
                
                Spacer()
                
                Text("89")
                    .padding(.horizontal, 10)
                Text("73")
                    .padding(.horizontal, 10)
                    .opacity(0.5)
            }
            
            HStack {
                Image(systemName: "cloud.bolt.fill")
            }
        }
    }
}
