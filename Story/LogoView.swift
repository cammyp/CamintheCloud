import SwiftUI

struct LogoView: View {
    var body: some View {
        VStack {
            Text("Cam")
                .foregroundColor(Color.white)
                .font(.system(size: 40))
                .frame(width: 400)
                .offset(y: -40)
            Text("in the")
                .foregroundColor(Color.white)
                .font(.system(size: 30))
                .frame(width: 400)
                .offset(y: -40)
            Text("Cloud")
                .foregroundColor(Color.white)
                .font(.system(size: 50))
                .frame(width: 400)
                .offset(y: -45)
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
