import SwiftUI

struct CoverText: View {
    var body: some View {
        Text("Little Stories")
        .bold()
        .font(.system(size: 40))
        .foregroundColor(Color.blue)
    }
}

struct CoverText_Previews: PreviewProvider {
    static var previews: some View {
        CoverText()
    }
}
