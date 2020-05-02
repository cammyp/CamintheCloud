import SwiftUI

struct QuizView3: View {
    
    // needed to dismiss view
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color(0x6ca6d6).edgesIgnoringSafeArea(.all)
            VStack {
                AniView(ani: "lf30_editor_FvMCai")
                    .frame(width: 200, height: 200)
                    .offset(y: 35)
                
                QuestionView(text: "What is the cloud?")
                    .offset(y: 50)
                
                CheckpointView(text: "The cloud is a metaphor for the Internet.")
                
                DismissButton()
                    .onTapGesture {
                        self.presentationMode.wrappedValue.dismiss()
                }
            }
        }
    }
}

struct QuizView3_Previews: PreviewProvider {
    static var previews: some View {
        QuizView3()
    }
}
