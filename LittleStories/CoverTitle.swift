import SwiftUI

struct CoverTitle: View {
    var body: some View {
        Text("Lisa and The Cloud")
        .bold()
        .font(.system(size: 60))
        .foregroundColor(Color.black)
        .multilineTextAlignment(.center)
    }
}

struct CoverTitle_Previews: PreviewProvider {
    static var previews: some View {
        CoverTitle()
    }
}
