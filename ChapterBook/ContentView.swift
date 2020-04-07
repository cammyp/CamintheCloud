import SwiftUI

struct ContentView: View {
    
    @State var isAtMaxScale = false
    private let maxScale: CGFloat = 1.1
    private let animation = Animation.easeInOut(duration: 1).repeatForever(autoreverses: true)
    
    var body: some View {
        VStack {
            
            Text("What in the World")
                .bold()
                .underline()
                .font(.system(size: 35))
                .offset(y: 27)
                .scaleEffect(isAtMaxScale ? maxScale : 1)
                .onAppear {
                    withAnimation(self.animation, {
                        self.isAtMaxScale.toggle()
                    })
            }
            
            ScrollView(.vertical) {
                Text("Donec porta enim ac velit facilisis, at euismod odio tempus. Duis ") +
                Text("pretium ")
                    .bold()
                    .font(.system(size: 40))
                    .foregroundColor(Color.blue)
                Text("nisl a consequat tincidunt. Aenean quis metus id magna dapibus efficitur vitae sed velit. Duis ac cursus metus. Morbi")
                Image("pic2")
                    .resizable()
                    .frame(width: 400, height: 400)
                Text("ultricies tortor sed arcu pulvinar, at ultrices magna aliquet. ") +
                Text("Maecenas ")
                    .bold()
                    .font(.system(size: 40))
                    .foregroundColor(Color.red) +
                Text("luctus, felis a venenatis mattis, mauris dui facilisis odio, sit amet euismod massa purus non lectus. Etiam eu ante ut quam vehicula molestie et a tortor. Suspendisse potenti. ")
                Text("Aenean ")
                    .bold()
                    .font(.system(size: 40))
                    .foregroundColor(Color.pink) +
                Text("dictum at purus vitae dignissim. ")
                
                Image("pic3")
                    .resizable()
                    .frame(width: 400, height: 225)
                
                Text("Donec interdum sapien eros, ac ultrices libero lacinia at. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed sit amet tellus erat. Vivamus interdum ") +
                Text("Vivamus")
                .bold()
                .font(.system(size: 40))
                .foregroundColor(Color.orange) +
                Text(" ultricies laoreet, libero dui tristique massa, eu accumsan libero ipsum eget risus.")
                
                Spacer()
                Text("Next Page").padding(.top, 20)
                Image("next").resizable().frame(width: 50, height: 50)
            }
            .font(.system(size: 30))
            .padding()
            .offset(y: 20)
            .multilineTextAlignment(.center)
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
