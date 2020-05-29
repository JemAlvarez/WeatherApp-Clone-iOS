import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient:
                Gradient(colors: [Color(red: 0.10, green: 0.16, blue: 0.34), Color(red: 0.15, green: 0.24, blue: 0.46)]),
                           startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
                .opacity(0.5)
                
            VStack {
                ScrollView(showsIndicators: false) {
                    MainView()
                    
                    Divider()
                    
                    PerHour(length: 26)
                    
                    Divider()
                    
                    PerDay()
                    
                    Divider()
                    
                    SummaryView(summary: "Today: Partly cloudy currently. It's 84º; the high today was forecast as 89º.")
                    
                    Divider()
                    
                    StatsView()
                }
                
                VStack {
                    Divider()

                    HStack {
                        Image(systemName: "thermometer")
                            .opacity(0.5)

                        Spacer()

                        Image(systemName: "list.bullet")
                            .opacity(0.5)
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
