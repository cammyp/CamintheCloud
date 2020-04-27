import SwiftUI

struct PageCard: View {
    
    @Binding var index: Int
    var story = Story()
    
    var body: some View {
        VStack(spacing: 80) {
            ImageTemplate(index: $index)
            TextTemplate(text: story.text[self.index])
        }
    }
}

struct PageCard_Previews: PreviewProvider {
    static var previews: some View {
        PageCard(index: .constant(1))
    }
}
