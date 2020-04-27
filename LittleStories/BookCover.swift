import SwiftUI

struct BookCover: View {

    var body: some View {
        ZStack  {
            BackView(upperBound: 0.7, lowerBound: 0.3)
            VStack(spacing: 50) {
                CoverText()
                VStack {
                    CoverImage()
                    CoverTitle()
                }
                AnimatedButton()
            }
        }
    }
}

struct BookCover_Previews: PreviewProvider {
    static var previews: some View {
        BookCover()
    }
}
