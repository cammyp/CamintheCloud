import SwiftUI

struct EndView: View {
    
    @State private var isLarge = false
    private var animation = Animation.easeInOut(duration: 1).repeatForever(autoreverses: true)
    
    var body: some View {
        ZStack  {
            Image("back")
            VStack {
                Text("Little Stories")
                    .bold()
                    .font(.system(size: 40))
                    .foregroundColor(Color.blue)
                Image("00")
                Text("Will Lisa get the cloud back up and running before it is too late? Stay tuned for chapter two, coming out later this month!")
                    .bold()
                    .font(.system(size: 25))
                    .foregroundColor(Color.black)
                    .frame(width: 350, height: 300)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

struct EndView_Previews: PreviewProvider {
    static var previews: some View {
        EndView()
    }
}
