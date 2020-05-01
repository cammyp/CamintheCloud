import SwiftUI

struct PageContent: View {
    
    @Binding var index: Int
    var storytext = StoryText()
    
    var body: some View {
        ZStack {
            Color(0x2050bc).edgesIgnoringSafeArea(.all)
            VStack {
                AniZStack(index: $index)
                
                Text(storytext.text[index])
                    .foregroundColor(Color.white)
                    .font(.system(size: 25))
                    .frame(width: 300, height: 400, alignment: .top)
                    .multilineTextAlignment(.center)
            }
            
        }
        
        
    }
}

struct PageContent_Previews: PreviewProvider {
    static var previews: some View {
        PageContent(index: .constant(1))
    }
}
