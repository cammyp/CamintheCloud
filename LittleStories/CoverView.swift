import SwiftUI

struct CoverView: View {
    
    var body: some View {
        ZStack  {
            Image("back")
            VStack(spacing: 50) {
                Text("Little Stories")
                    .bold()
                    .font(.system(size: 40))
                    .foregroundColor(Color.blue)
                VStack {
                    Image("00")
                    Text("Lisa and The Cloud")
                        .bold()
                        .font(.system(size: 60))
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                }
                ButtonTemplate(text: .constant("Continue >"))
            }
        }
    }
}

struct CoverView_Previews: PreviewProvider {
    static var previews: some View {
        CoverView()
    }
}
