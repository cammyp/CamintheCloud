import SwiftUI

struct DismissButton: View {
    var body: some View {
        Text("Dismiss")
            .bold()
            .font(.system(size: 15))
            .foregroundColor(Color(0x2050bc))
            .frame(width: 100, height: 30)
            .background(Color.white)
            .cornerRadius(50)
            .shadow(color: Color.black, radius: 1, x: 3, y: 3)
            .offset(y: 175)
    }
}

struct DismissButton_Previews: PreviewProvider {
    static var previews: some View {
        DismissButton()
    }
}
