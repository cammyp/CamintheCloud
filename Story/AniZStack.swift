import SwiftUI

struct AniZStack: View {
    
    @Binding var index: Int
    
    var body: some View {
        ZStack {
            AniView(ani: "lf30_editor_wLl3Og")
                .frame(width: 200, height: 200)
                .opacity(index == 1 ? 1 : 0)
            AniView(ani: "lf30_editor_tGA8Nt")
                .frame(width: 200, height: 200)
                .opacity(index == 2 ? 1 : 0)
            AniView(ani: "lf30_editor_cQ5KjG")
                .frame(width: 200, height: 200)
                .opacity(index == 3 ? 1 : 0)
                .offset(y: -50)
            AniView(ani: "lf30_editor_uKScm3")
                .frame(width: 200, height: 200)
                .opacity(index == 4 ? 1 : 0)
                .offset(y: -50)
            AniView(ani: "lf30_editor_y2JPTf")
                .frame(width: 200, height: 200)
                .opacity(index == 5 ? 1 : 0)
                .offset(y: -20)
            AniView(ani: "lf20_q50fug")
                .frame(width: 200, height: 200)
                .opacity(index == 6 ? 1 : 0)
                .offset(y: -20)
            AniView(ani: "lf30_editor_0Tqtup")
                .frame(width: 200, height: 200)
                .opacity(index == 7 ? 1 : 0)
            AniView(ani: "lf30_editor_nNqkNK")
                .frame(width: 200, height: 200)
                .opacity(index == 8 ? 1 : 0)
        }
    }
}

struct AniZStack_Previews: PreviewProvider {
    static var previews: some View {
        AniZStack(index: .constant(7))
    }
}
