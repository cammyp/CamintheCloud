import SwiftUI

struct TableOfContents: View {
    
    @State var isVisible = true
    private let animation = Animation.easeInOut(duration: 4).repeatForever(autoreverses: true)
    
    var body: some View {
        VStack(alignment: .center, spacing: 30) {
            
            Image("cloud")
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .scaleEffect(isVisible ? 0.9 : 1.3)
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
                    NavigationLink(destination: ChapterOne()) {
                        Text("I. Adventures of the Cloud")
                        .bold()
                        .font(.system(size: 30))
                        .foregroundColor(Color.black)
                    }
                    
                    NavigationLink(destination: ChapterTwo()) {
                        Text("II. What does it do")
                        .bold()
                        .font(.system(size: 30))
                        .foregroundColor(Color.black)
                    }
                    
                    NavigationLink(destination: ChapterThree()) {
                        Text("III. Where is it and what is it")
                        .bold()
                        .font(.system(size: 30))
                        .foregroundColor(Color.black)
                    }
                    
                    NavigationLink(destination: ChapterFour()) {
                        Text("IV. What does it need to run")
                        .bold()
                        .font(.system(size: 30))
                        .foregroundColor(Color.black)
                    }
                
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

struct TableOfContents_Previews: PreviewProvider {
    static var previews: some View {
        TableOfContents()
    }
}
