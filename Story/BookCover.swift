import SwiftUI

struct BookCover: View {
    var body: some View {
        ZStack {
            Color(0x2050bc).edgesIgnoringSafeArea(.all)
            VStack {
                LogoView()
                AniView(ani: "lf30_editor_FvMCai")
                    .frame(width: 300, height: 300)
                BeginButton()
            }
        }
    }
}

struct BookCover_Previews: PreviewProvider {
    static var previews: some View {
        BookCover()
    }
}
