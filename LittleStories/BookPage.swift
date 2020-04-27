import SwiftUI

struct BookPage: View {
    
    @State private var index = 0
    private var story = Story()
    
    var body: some View {
        ZStack  {
            Image("background")
            VStack(spacing: 50) {
                VStack(spacing: 80) {
                    Image("\(self.index + 1)0")
                    TextTemplate(text: story.text[self.index])
                }
                HStack {
                    NextButton(index: $index, isType: .constant(false))
                    NextButton(index: $index, isType: .constant(true))
                }
            }
        }
    }
}

struct BookPage_Previews: PreviewProvider {
    static var previews: some View {
        BookPage()
    }
}
