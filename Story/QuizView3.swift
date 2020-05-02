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
                
                Text("What is the cloud?")
                    .foregroundColor(Color.white)
                    .font(.system(size: 30))
                    .frame(width: 300, height: 100, alignment: .top)
                    .multilineTextAlignment(.center)
                    .offset(y: 50)
                
                Text("The cloud is a metaphor for the Internet.")
                    .bold()
                    .font(.system(size: 20))
                    .foregroundColor(Color.white)
                    .frame(width: 300, height: 50)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(30)
                    .shadow(color: Color(0xcc0001), radius: 1, x: 3, y: 3)
                    .padding()
                
                Text("Dismiss")
                .bold()
                .font(.system(size: 15))
                .foregroundColor(Color(0x2050bc))
                .frame(width: 100, height: 30)
                .background(Color.white)
                .cornerRadius(50)
                .shadow(color: Color.black, radius: 1, x: 3, y: 3)
                .offset(y: 175)
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
