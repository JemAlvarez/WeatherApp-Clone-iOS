import SwiftUI

struct PerHour: View {
    var hours: [String] {
        hoursArray(arrLength: 26)
    }
    var length: Int
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<length) {i in
                    if i < 10 {
                        HourView(hour: self.hours[i], rain: "70%", imgName: "cloud.bolt.fill", temp: "88º")
                    } else {
                        HourView(hour: self.hours[i], rain: " ", imgName: "cloud.bolt.fill", temp: "88º")
                    }
                }
            }
            .padding(.horizontal, 5)
        }
    }
    
    func hoursArray(arrLength: Int) -> [String] {
        var arr: [String] = []
        
        for i in 0..<arrLength {
            if i == 0 {
                arr.append("Now")
            } else {
                if (i < 12) || (i > 24) {
                    if i > 12 {
                        arr.append("\(26 - i)AM")
                    } else {
                        arr.append("\(i)AM")
                    }
                } else {
                    if i - 12 == 0 {
                        arr.append("12PM")
                    } else {
                        arr.append("\(i - 12)PM")
                    }
                }
            }
        }
        
        return arr
    }
}

struct HourView: View {
    var hour: String
    var rain: String
    var imgName: String
    var temp: String
    
    var body: some View {
        VStack {
            Text(hour)
            Text(rain)
                .font(.system(size: 12))
                .fontWeight(.thin)
                .foregroundColor(Color(red: 0.45, green: 0.73, blue: 1.00))
            Image(systemName: imgName)
            Text(temp)
        }
        .padding(.horizontal,10)
    }
}
