import SwiftUI

struct NextButton: View {
    
    @Binding var index: Int
    @Binding var isType: Bool
    
    var body: some View {
        Text(isType ? "Next >" : "< Previous")
            .bold()
            .font(.system(size: 20))
            .foregroundColor(Color.white)
            .frame(width: 150, height: 50)
            .background(Color.blue)
            .cornerRadius(50)
            .padding()
            .onTapGesture {
                if(self.isType) {
                    self.index += 1
                } else {
                    self.index -= 1
                }
        }
    }
}

struct NextButton_Previews: PreviewProvider {
    static var previews: some View {
        NextButton(index: .constant(1), isType: .constant(false))
    }
}
