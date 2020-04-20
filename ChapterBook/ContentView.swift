import SwiftUI

struct ContentView: View {
    
    @State var isVisible = true
    private let animation = Animation.easeInOut(duration: 10).repeatForever(autoreverses: true)
    
    var body: some View {
        VStack(alignment: .center, spacing: 30) {
            
            Image("cloud")
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .opacity(isVisible ? 0.5 : 1)
                .onAppear {
                    withAnimation(self.animation, {
                        self.isVisible.toggle()
                    })
            }
            
            VStack(alignment: .center, spacing: 40) {
                Text("CHAPTERS")
                    .bold()
                    .font(.system(size: 40))
                VStack(alignment: .leading, spacing: 30) {
                    Text("I. Adventures of the Cloud")
                        .bold()
                        .font(.system(size: 30))
                    Text("II. What does it do")
                        .bold()
                        .font(.system(size: 30))
                    Text("III. Where is it and what is it")
                        .bold()
                        .font(.system(size: 30))
                    Text("IV. What does it need to run")
                        .bold()
                        .font(.system(size: 30))
                    Text("V. Who controls it")
                        .bold()
                        .font(.system(size: 30))
                    Text("VI. It saves the day")
                        .bold()
                        .font(.system(size: 30))
                    Text("VII. Lesson Quiz")
                        .font(.system(size: 30))
                        .bold()
                        .foregroundColor(Color.blue)
                }.padding()
            }
            .padding()
            .border(Color.blue, width: 1)
        }.offset(y: -20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
