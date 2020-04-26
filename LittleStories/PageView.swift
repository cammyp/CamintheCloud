import SwiftUI

struct PageView: View {
    
    @State private var index = 0
    private var story = Story()
    
    var body: some View {
        ZStack  {
            Image("back")
            VStack(spacing: 70) {
                VStack {
                    Image("\(self.index + 1)0")
                    TextTemplate(text: story.text[self.index])
                }
                ButtonTemplate(text: .constant("Next Page >"))
                    .onTapGesture {
                        self.index += 1
                }
            }
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView()
    }
}
