import SwiftUI

struct TextTemplate: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .font(.system(size: 25))
            .foregroundColor(Color.black)
            .frame(width: 350, height: 300, alignment: .top)
    }
}

struct TextTemplate_Previews: PreviewProvider {
    static var previews: some View {
        TextTemplate(text: "Here is my story text")
    }
}

