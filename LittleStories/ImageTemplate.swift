import SwiftUI

struct ImageTemplate: View {
    
    @Binding var index: Int
    @State var isLarge = false
    var animation = Animation.easeInOut(duration: 2).repeatForever(autoreverses: true)
    
    var body: some View {
        Image("\(self.index + 1)0")
        .scaleEffect(isLarge ? 1 : 1.05)
        .rotationEffect(.degrees(isLarge ? -5 : 5))
        .animation(animation)
        .onAppear() {
            self.isLarge = true
        }
    }
}

struct ImageTemplate_Previews: PreviewProvider {
    static var previews: some View {
        ImageTemplate(index: .constant(1))
    }
}
