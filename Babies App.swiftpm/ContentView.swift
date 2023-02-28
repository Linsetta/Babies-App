import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "face.smiling")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, Babies!")
        }
    }
}
