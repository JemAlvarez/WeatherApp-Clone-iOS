import SwiftUI

struct StatsView: View {
    var body: some View {
        VStack {
            Line(titleL: "SUNRISE", numsL: "6:34AM", titleR: "SUNSET", numsR: "8:01PM", divider: true)
            Line(titleL: "CHANCE OF RAIN", numsL: "20%", titleR: "HUMIDITY", numsR: "79%", divider: true)
            Line(titleL: "WIND", numsL: "sw 3 mph", titleR: "FEELS LIKE", numsR: "88º", divider: true)
            Line(titleL: "PRECIPITATION", numsL: "0 in", titleR: "PRESSURE", numsR: "29.94 inHg", divider: true)
            Line(titleL: "VISIBILITY", numsL: "10 mi", titleR: "UV INDEX", numsR: "0", divider: true)
            Line(titleL: "AIR QUALITY INDEX", numsL: "60", titleR: "AIR QUALITY", numsR: "Moderate", divider: false)
        }
        .padding(.horizontal)
    }
}

struct Line: View {
    var titleL: String
    var numsL: String
    var titleR: String
    var numsR: String
    var divider: Bool
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text(titleL)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 10))
                        .opacity(0.5)
                    Text(numsL)
                        .font(.system(size: 20))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .opacity(1)
                }
                VStack {
                    Text(titleR)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 10))
                        .opacity(0.5)
                    Text(numsR)
                        .font(.system(size: 20))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .opacity(1)
                }
            }
            if divider {
                Divider()
            }
        }
    }
}
