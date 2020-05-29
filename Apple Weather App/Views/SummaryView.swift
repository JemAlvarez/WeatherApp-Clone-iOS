import SwiftUI

struct SummaryView: View {
    var summary: String
    
    var body: some View {
        Text(summary)
            .padding(EdgeInsets(top: 0, leading: 3, bottom: 0, trailing: 20))
    }
}
