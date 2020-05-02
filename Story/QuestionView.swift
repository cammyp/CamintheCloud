import SwiftUI

struct QuestionView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
        .foregroundColor(Color.white)
        .font(.system(size: 30))
        .frame(width: 300, height: 100, alignment: .top)
        .multilineTextAlignment(.center)
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(text: "Where is the cloud?")
    }
}
