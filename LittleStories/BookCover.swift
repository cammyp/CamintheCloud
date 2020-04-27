import SwiftUI

struct BookCover: View {
    
    var body: some View {
        ZStack  {
            Image("background")
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
                AnimatedButton()
            }
        }
    }
}

struct BookCover_Previews: PreviewProvider {
    static var previews: some View {
        BookCover()
    }
}
