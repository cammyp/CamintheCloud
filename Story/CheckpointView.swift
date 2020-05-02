import SwiftUI

struct CheckpointView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .font(.system(size: 20))
            .foregroundColor(Color.white)
            .frame(width: 300, height: 50)
            .padding()
            .background(Color.red)
            .cornerRadius(30)
            .shadow(color: Color(0xcc0001), radius: 1, x: 3, y: 3)
            .padding()
    }
}

struct CheckpointView_Previews: PreviewProvider {
    static var previews: some View {
        CheckpointView(text: "They could be anywhere in the world.")
    }
}
