import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            PageTemplate()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
