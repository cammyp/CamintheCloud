import SwiftUI

struct BookPage: View {
    
    @State private var index = 0
    private var story = Story()
    
    var body: some View {
        ZStack  {
            BackView(upperBound: 0.7, lowerBound: 0.3)
            VStack(spacing: 30) {
                PageCard(index: $index)
                HStack {
                    NextButton(index: $index, isType: .constant(false)).opacity(index == 0 ? 0 : 1)
                    NextButton(index: $index, isType: .constant(true)).opacity(index == 11 ? 0 : 1)
                }
            }.offset(y: -70)
        }
    }
}

struct BookPage_Previews: PreviewProvider {
    static var previews: some View {
        BookPage()
    }
}
