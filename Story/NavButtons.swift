import SwiftUI

struct NavButtons: View {
    
    @Binding var index: Int
    
    // needed to dismiss view
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        HStack {
            Button(action: {
                if(self.index == 1) {
                    self.presentationMode.wrappedValue.dismiss()
                } else {
                    self.index -= 1
                }
            }){
                Text(self.index >= 2 ? "< Prev" : "Home")
                    .bold()
                    .font(.system(size: 25))
                    .foregroundColor(Color.white)
                    .frame(width: 150, height: 50)
                    .background(Color.red)
                    .cornerRadius(30)
                    .shadow(color: Color(0xcc0001), radius: 1, x: 3, y: 3)
            }
            Button(action: {
                if(self.index == 8) {
                    self.presentationMode.wrappedValue.dismiss()
                } else {
                    self.index += 1
                }
                
            }){
                Text(self.index < 8 ? "Next >" : "Home")
                    .bold()
                    .font(.system(size: 25))
                    .foregroundColor(Color.white)
                    .frame(width: 150, height: 50)
                    .background(Color.red)
                    .cornerRadius(30)
                .shadow(color: Color(0xcc0001), radius: 1, x: 3, y: 3)
            }
        }
    }
}

struct NavButtons_Previews: PreviewProvider {
    static var previews: some View {
        NavButtons(index: .constant(9))
    }
}
