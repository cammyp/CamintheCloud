import SwiftUI

struct ButtonTemplate: View {
    
    @State var isLarge = false
    var animation = Animation.easeInOut(duration: 1).repeatForever(autoreverses: true)
    @Binding var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .font(.system(size: 20))
            .foregroundColor(Color.white)
            .frame(width: 150, height: 50)
            .background(Color.blue)
            .cornerRadius(50)
            .padding()
            .scaleEffect(self.isLarge ? 1 : 1.2)
            .animation(animation)
            .onAppear() {
                self.isLarge.toggle()
        }
    }
}

struct ButtonTemplate_Previews: PreviewProvider {
    static var previews: some View {
        ButtonTemplate(text: .constant("Next Page >"))
    }
}
