import SwiftUI

struct BackView: View {
    
    var upperBound: Double
    var lowerBound: Double
    @State var isVisible = false
    var animation = Animation.easeInOut(duration: 2).repeatForever(autoreverses: true)
    
    var body: some View {
        ZStack {
            Image("back")
            Image("cover")
                .opacity(isVisible ? upperBound : lowerBound)
                .animation(animation)
                .onAppear() {
                    self.isVisible = true
            }
        }
    }
}

struct BackView_Previews: PreviewProvider {
    static var previews: some View {
        BackView(upperBound: 0.8, lowerBound: 0.3)
    }
}
