import SwiftUI

struct ChapterTwo: View {
    
    @State var isAtMaxScale = false
    private let maxScale: CGFloat = 0.8
    private let animation = Animation.easeInOut(duration: 1).repeatForever(autoreverses: true)
    
    var body: some View {
        VStack {
            
            Text("What does it do")
                .bold()
                .underline()
                .font(.system(size: 35))
                .offset(y: 27)
                .scaleEffect(isAtMaxScale ? maxScale : 0.7)
                .onAppear {
                    withAnimation(self.animation, {
                        self.isAtMaxScale.toggle()
                    })
            }
            
            ScrollView(.vertical) {
                Text("Let me explain something to you 👩‍🏫. Think about your devices 📱💻. Pretend they are little magic boxes ✳️.  They preform tasks for us however we don’t know how the tasks are being preformed . Magic 🧙🏾‍♂️. You can think of the cloud 🌩 as the “trapped door” explanation to a magic trick 🧙🏾‍♂️✳️. The cloud 🌩 explains how to preform tasks to your devices 📱💻 .  ")
                    .bold()
                    .font(.system(size: 32))
                    .frame(width: 370, alignment: .topLeading)
                    .padding()
                
                Text("The cloud 🌩 does this by giving your devices little pieces of information ⏺. Information that your devices need to preform your tasks ⏺📱. Your tasks are usually, send a tweet 🐦 or stream this video 📡.  The information ⏺ could be anything from a Gmail message 📥 to an Instagram picture 🎴.  ")
                    .bold()
                    .font(.system(size: 32))
                    .frame(width: 370, alignment: .topLeading)
                    .padding()
            }
            .font(.system(size: 30))
            .offset(y: 20)
            .multilineTextAlignment(.center)
        }
    }
}

struct ChapterTwo_Previews: PreviewProvider {
    static var previews: some View {
        ChapterTwo()
    }
}
