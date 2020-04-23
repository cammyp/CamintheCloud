import SwiftUI

struct PageTemplate: View {
    
    @State private var index = 0
    private var book = Book()
    
    var body: some View {
        ZStack {
            Image("background").resizable().edgesIgnoringSafeArea(.all)
            HStack(alignment: .top) {
                Image("count\(self.index + 1)")
                    .offset(x: -150)
                VStack(alignment: .center, spacing: 10) {
                    Image("title")
                    TextTemplate(text: book.textArray[index])
                    Image("next").onTapGesture {
                        self.index += 1
                    }
                }.offset(x: 150)
            }.offset(y: 20)
        }
    }
}

struct PageTemplate_Previews: PreviewProvider {
    static var previews: some View {
        PageTemplate().previewLayout(.fixed(width: 896, height: 414))
        
    }
}
