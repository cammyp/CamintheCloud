import SwiftUI

struct CoverImage: View {
    
    @State var isLarge = false
    var animation = Animation.easeInOut(duration: 2).repeatForever(autoreverses: true)
    
    var body: some View {
        Image("00")
        .rotationEffect(.degrees(isLarge ? 3 : -3))
        .animation(animation)
        .onAppear() {
            self.isLarge = true
        }
    }
}

struct CoverImage_Previews: PreviewProvider {
    static var previews: some View {
        CoverImage()
    }
}
