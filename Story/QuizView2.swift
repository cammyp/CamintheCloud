import SwiftUI

struct QuizView2: View {
    var body: some View {
        ZStack {
            Color(0x6ca6d6).edgesIgnoringSafeArea(.all)
            VStack {
                AniView(ani: "lf30_editor_uKScm3")
                    .frame(width: 200, height: 200)
                
                Text("Where is the cloud?")
                    .foregroundColor(Color.white)
                    .font(.system(size: 30))
                    .frame(width: 300, height: 100, alignment: .top)
                    .multilineTextAlignment(.center)
                    .offset(y: 40)
                
                Text("They could be anywhere in the world.")
                    .bold()
                    .font(.system(size: 20))
                    .foregroundColor(Color.white)
                    .frame(width: 300, height: 50)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(30)
                    .shadow(color: Color(0xcc0001), radius: 1, x: 3, y: 3)
                    .padding()
            }
        }
    }
}

struct QuizView2_Previews: PreviewProvider {
    static var previews: some View {
        QuizView2()
    }
}
