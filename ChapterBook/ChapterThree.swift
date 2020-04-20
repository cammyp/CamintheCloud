import SwiftUI

struct ChapterThree: View {
    
    @State var isAtMaxScale = false
    private let maxScale: CGFloat = 0.8
    private let animation = Animation.easeInOut(duration: 1).repeatForever(autoreverses: true)
    
    var body: some View {
        VStack {
            
            Text("Where is it and what is it")
                .bold()
                .underline()
                .font(.system(size: 35))
                .offset(y: 27)
                .scaleEffect(isAtMaxScale ? maxScale : 0.7)
                .onAppear {
                    withAnimation(self.animation, {
                        self.isAtMaxScale.toggle()
                    })
            }
            
            ScrollView(.vertical) {
                Text("Strata is special 👩🏾‍🦱👑. She is the only citizen 👨‍👩‍👦 in Cumulus United 🇺🇸 that is unaffected by the toxic chemicals 🦠 in the air. She must go on an adventure during the Great Pandemic of 2020 🦠 to restore the cloud 🌩.")
                    .bold()
                    .font(.system(size: 32))
                    .frame(alignment: .topLeading)
                    .padding()
                
                Text("The cloud 🌩 is usually far, far 🏃‍♀️ away from large groups of people. Now, hold on to your seat💺 cause this is going to blow your mind 🤯. The cloud is indoors 🌩🏢🤯! Yes. Unlike its name, the cloud is indoors 🌩🏢 and consists of many 🏢, many 🏢 data servers 🏢🏢. ")
                    .bold()
                    .font(.system(size: 32))
                    .padding()
                
                Text("Strata 👩🏾‍🦱 must travel to the nearest cloud 🌩 data center 🏢 which happens to be located in Cirrenessee. Strata 👩🏾‍🦱 must travel to the nearest cloud 🌩 data center 🏢 which happens to be located in Cirrenessee.")
                                   .bold()
                                   .font(.system(size: 32))
                                   .padding()
            }
            .font(.system(size: 30))
            .offset(y: 20)
            .multilineTextAlignment(.center)
        }
    }
}

struct ChapterThree_Previews: PreviewProvider {
    static var previews: some View {
        ChapterThree()
    }
}
