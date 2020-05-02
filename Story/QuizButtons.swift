import SwiftUI
import ModalView

struct QuizButtons: View {
    
    @Binding var index: Int
    
    var body: some View {
        ZStack {
            ModalLink(destination: QuizView3().navigationBarTitle("").navigationBarHidden(true)) {
                Text("View Checkpoint")
                    .bold()
                    .font(.system(size: 15))
                    .foregroundColor(Color(0x2050bc))
                    .frame(width: 200, height: 30)
                    .background(Color.white)
                    .cornerRadius(50)
                    .shadow(color: Color.black, radius: 1, x: 3, y: 3)
            }.opacity(index == 3 ?  1 : 0)
            
            ModalLink(destination: QuizView4().navigationBarTitle("").navigationBarHidden(true)) {
                Text("View Checkpoint")
                    .bold()
                    .font(.system(size: 15))
                    .foregroundColor(Color(0x2050bc))
                    .frame(width: 200, height: 30)
                    .background(Color.white)
                    .cornerRadius(50)
                    .shadow(color: Color.black, radius: 1, x: 3, y: 3)
            }.opacity(index == 4 ?  1 : 0)
            
            ModalLink(destination: QuizView5().navigationBarTitle("").navigationBarHidden(true)) {
                Text("View Checkpoint")
                    .bold()
                    .font(.system(size: 15))
                    .foregroundColor(Color(0x2050bc))
                    .frame(width: 200, height: 30)
                    .background(Color.white)
                    .cornerRadius(50)
                    .shadow(color: Color.black, radius: 1, x: 3, y: 3)
            }.opacity(index == 5 ?  1 : 0)
        }
    }
}

struct QuizButtons_Previews: PreviewProvider {
    static var previews: some View {
        QuizButtons(index: .constant(3))
    }
}
