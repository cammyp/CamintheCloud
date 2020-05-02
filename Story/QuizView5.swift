import SwiftUI

struct QuizView5: View {
    
    // needed to dismiss view
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color(0x6ca6d6).edgesIgnoringSafeArea(.all)
            VStack {
                AniView(ani: "lf30_editor_uKScm3")
                    .frame(width: 200, height: 200)
                
                QuestionView(text: "Where is the cloud?")
                    .offset(y: 40)
                
                CheckpointView(text: "They could be anywhere in the world.")
                
                DismissButton()
                    .onTapGesture {
                        self.presentationMode.wrappedValue.dismiss()
                }
            }
        }
    }
}

struct QuizView5_Previews: PreviewProvider {
    static var previews: some View {
        QuizView5()
    }
}
