import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            VStack {
                Text("Homestead")
                    .font(.title)
                Text("Mostly Sunny")
                    .font(.caption)
                Text("88º")
                    .font(.system(size: 90))
                    .fontWeight(.thin)
            }
            .frame(maxWidth: .infinity)
            .padding(.bottom, 60)
            .padding(.top, 100)
            
            HStack {
                Text("Sunday")
                Text("TODAY")
                
                Spacer()
                
                Text("89")
                    .padding(.horizontal, 10)
                Text("73")
                    .padding(.horizontal, 10)
                    .opacity(0.5)
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 20)
        }
    }
}
