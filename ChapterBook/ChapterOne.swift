import SwiftUI

struct ChapterOne: View {
    
    @State var isAtMaxScale = false
    private let maxScale: CGFloat = 0.8
    private let animation = Animation.easeInOut(duration: 1).repeatForever(autoreverses: true)
    
    var body: some View {
        VStack {
            Text("Adventures of the Cloud")
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
                Text("Strata 👩🏾‍🦱 was at home 🏠 watching Netflix when suddenly everything went dark. Netflix, Gmail, Hulu, Instagram, Disney+, EVERYTHING! 'What the heck?!!' Strata yelled 👩🏾‍🦱😩.")
                    .bold()
                    .font(.system(size: 32))
                    .frame(width: 370, alignment: .topLeading)
                    .padding()
                
                Text("Cumulus United 🇺🇸, the country where Strata lives, needs the cloud 🌩 to help its citizens 👨‍👨‍👧‍👦 stay entertained while inside during the Great Pandemic of 2020 🦠. Citizens were very upset about staying inside ☹️ however with toxic chemicals in the air, they had no other choice.")
                    .bold()
                    .font(.system(size: 32))
                    .frame(width: 370, alignment: .topLeading)
                    .padding()
                
                Text("Now, with the cloud 🌩 going dark none of the citizens 👨‍👩‍👧‍👧 devices worked 📵. Can you imagine being stuck inside 🏠with no iPhone, computer, or table 😭?! No, neither can I 😰.")
                    .bold()
                    .font(.system(size: 32))
                    .frame(width: 370, alignment: .topLeading)
                    .padding()
            }
            .font(.system(size: 30))
            .offset(y: 20)
            .multilineTextAlignment(.center)
        }
    }
}

struct ChapterOne_Previews: PreviewProvider {
    static var previews: some View {
        ChapterOne()
    }
}
