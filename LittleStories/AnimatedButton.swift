import SwiftUI

struct AnimatedButton: View {
    
    @State var isLarge = false
    var animation = Animation.easeInOut(duration: 1).repeatForever(autoreverses: true)
    
    var body: some View {
        Text("Read Story")
            .bold()
            .font(.system(size: 20))
            .foregroundColor(Color.white)
            .frame(width: 150, height: 50)
            .background(Color.blue)
            .cornerRadius(50)
            .padding()
            .scaleEffect(isLarge ? 1 : 1.2)
            .animation(animation)
            .onAppear() {
                self.isLarge = true
        }
    }
}

struct AnimatedButton_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedButton()
    }
}
