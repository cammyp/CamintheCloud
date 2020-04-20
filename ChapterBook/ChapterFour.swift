import SwiftUI

struct ChapterFour: View {
    
    @State var isAtMaxScale = false
    private let maxScale: CGFloat = 0.8
    private let animation = Animation.easeInOut(duration: 1).repeatForever(autoreverses: true)
    
    var body: some View {
        VStack {
            
            Text("What does it need to run")
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
                Text("Strata 👩🏾‍🦱 steps outside 👀. She is immediately shocked 😯 at how empty it is. There is no one walking 🚶‍♂️ on the sidewalks, there are no cars 🚙🚗 driving in the streets. Empty. ")
                    .bold()
                    .font(.system(size: 32))
                    .frame(width: 370, alignment: .topLeading)
                    .padding()
                
                Text("“I guess this is a good thing?” Strata says to herself 👩🏾‍🦱🤷🏽‍♀️.'Wow, the sky is so clear 🏞 and so blue 💙. The air smells fresher 🌻 than it ever has and the streets are so clean ✨' says Strata 👩🏾‍🦱😍.'Ok, I can’t get distracted. I need to go to Cirrenessee and restore the cloud with my magic! ✳️' ")
                    .bold()
                    .font(.system(size: 32))
                    .frame(width: 370, alignment: .topLeading)
                    .padding()
                
                Text("The cloud 🌩 needs only a couple of things to run, the data storage hardware 🏢, space(as in a building or multiple buildings) 🏢, and power ✳️. ")
                    .bold()
                    .font(.system(size: 32))
                    .frame(width: 370, alignment: .topLeading)
                    .padding()
                
                Text("During Great Pandemic of 2020 🦠 the cloud 🌩 has used all of its power ✳️ and all of its backup power ✳️. Only Strata can give it the power it needs to be restored 👩🏾‍🦱✳️✳️✳️✳️✳️.")
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

struct ChapterFour_Previews: PreviewProvider {
    static var previews: some View {
        ChapterFour()
    }
}
