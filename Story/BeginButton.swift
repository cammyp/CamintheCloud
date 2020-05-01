import SwiftUI

struct BeginButton: View {
    var body: some View {
        NavigationLink(destination: BookPage().navigationBarTitle("")
            .navigationBarHidden(true)) {
                Text("Begin")
                    .bold()
                    .font(.system(size: 25))
                    .foregroundColor(Color.white)
                    .frame(width: 150, height: 50)
                    .background(Color.red)
                    .cornerRadius(30)
                    .shadow(color: Color(0xcc0001), radius: 1, x: 3, y: 3)
                    .offset(y: 50)
        }.buttonStyle(PlainButtonStyle())
    }
}

struct BeginButton_Previews: PreviewProvider {
    static var previews: some View {
        BeginButton()
    }
}
