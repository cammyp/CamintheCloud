import SwiftUI

struct BookPage: View {
    
    @State var index = 1
    
    var body: some View {
        ZStack {
            Color(0x2050bc).edgesIgnoringSafeArea(.all)
            VStack {
                PageContent(index: $index).offset(y: 30)
                NavButtons(index: $index).offset(y: -50)
                QuizButtons(index: $index)
            }
        }
    }
}


struct BookPage_Previews: PreviewProvider {
    static var previews: some View {
        BookPage()
    }
}
