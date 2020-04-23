import SwiftUI

struct TextTemplate: View {
    
    var text: String
    
    var body: some View {
        Text(text)
        .bold()
        .padding()
        .background(Color.white)
        .border(Color.blue, width: 3)
        .frame(width: 320, height: 275)
        .font(.system(size: 25))
    }
}

struct TextTemplate_Previews: PreviewProvider {
    static var previews: some View {
        TextTemplate(text: "Suzie was at home on her computer when suddenly Netflix stopped working. It kept giving her a weird 404 error message. She tried to refresh the page, even restarted her computer.")
    }
}
