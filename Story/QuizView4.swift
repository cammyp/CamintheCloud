import SwiftUI

struct QuizView4: View {
    
    // needed to dismiss view
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color(0x6ca6d6).edgesIgnoringSafeArea(.all)
            VStack {
                AniView(ani: "lf30_editor_tGA8Nt")
                .frame(width: 200, height: 200)
                
                QuestionView(text: "What does the cloud do?")
                
                CheckpointView(text: "The cloud stores and accesses data over the Internet.")
                
                DismissButton()
                    .onTapGesture {
                        self.presentationMode.wrappedValue.dismiss()
                }
            }
        }
    }
}

struct QuizView4_Previews: PreviewProvider {
    static var previews: some View {
        QuizView4()
    }
}
