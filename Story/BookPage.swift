import SwiftUI

struct BookPage: View {
    
    @State var index = 1
    
    var body: some View {
        ZStack {
            Color(0x2050bc).edgesIgnoringSafeArea(.all)
            VStack {
                PageContent(index: $index).offset(y: 30)
                NavButtons(index: $index).offset(y: -50)
                
                Text("View Checkpoint")
                    .bold()
                    .font(.system(size: 15))
                    .foregroundColor(Color(0x2050bc))
                    .frame(width: 200, height: 30)
                    .background(Color.white)
                    .cornerRadius(50)
                    .shadow(color: Color.black, radius: 1, x: 3, y: 3)
                    .opacity(index == 3 || index == 4 || index == 5 ? 1 : 0)
            }
        }
    }
}


struct BookPage_Previews: PreviewProvider {
    static var previews: some View {
        BookPage()
    }
}
