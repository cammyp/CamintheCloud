import SwiftUI
import Lottie

struct AniView: UIViewRepresentable {
    
    var ani: String

    func makeUIView(context: UIViewRepresentableContext<AniView>) ->  AnimationView {
        
        let aniView = AnimationView()
        let animation = Animation.named(ani)
        aniView.animation = animation
        aniView.loopMode = .loop
        aniView.backgroundBehavior = .pauseAndRestore
        aniView.play()
        return aniView
    }
    func updateUIView(_ uiView: AnimationView, context: UIViewRepresentableContext<AniView>) {
    }
}

struct AniView_Previews: PreviewProvider {
    static var previews: some View {
        AniView(ani: "16484-loading-cloud")
    }
}
