import SwiftUI

struct PageView: View {
    
    @State private var index = 0
    private var story = Story()
    
    var body: some View {
        ZStack  {
            Image("back")
            VStack(spacing: 50) {
                VStack(spacing: 80) {
                    Image("\(self.index + 1)0")
                    TextTemplate(text: story.text[self.index])
                }
                HStack {
                    ButtonTemplate(text: .constant("< Previous"))
                        .onTapGesture {
                            self.index -= 1
                    }
                    ButtonTemplate(text: .constant("Next >"))
                        .onTapGesture {
                            self.index += 1
                    }
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
