import Subsonic
import SwiftUI

struct ContentView: View {
    @State var text = ""
    @State var title = "Hello Babies!"
    let answerAnalyser = AnswerAnalyser()
    let babies = ["Boy", "Girl", "Dreamer", "Alien"]
    let columns = [
        GridItem(.adaptive(minimum: 250)) 
    ]
    func submit() {
        title = "\(answerAnalyser.processAnswer(text: text))!"
    }
    
    var body: some View {
        VStack {
            Image(systemName: 
                    "face.smiling.fill")
            .imageScale(.large)
            .foregroundColor(.black)
            .padding(.top, 50)
            Text (title)    
                .font(.largeTitle)
            TextField("Do you want to meet a new friend?", text: $text)
                .multilineTextAlignment(.center)
                .frame(width: 300)
            Spacer()
            Button("Submit"){
                submit()   
            }
            Text("Let's find your besty!")
                .font(.largeTitle)
           // Color.blue.cornerRadius(15)
            NavigationView {
                ScrollView {    
                    LazyVGrid(columns: columns) { 
                        ForEach(babies, id: \.self){ baby in 
                            NavigationLink(baby) {
                                Text(baby)
                                Button {
                                    play(sound: "\(baby).m4a")
                                } label: {
                    //Question:  why my images don't resize and scaled even though I have next setting down there? How I can fix it?
                                    Image(baby)
                                        .resizable()
                                        .scaledToFill()
                                        .cornerRadius(70)    
                                        .padding(.horizontal)
                                }
                            }
                        }
                    }
                    .background(Color.green).navigationTitle("Babies")    
                }.padding(.all).background(Color.gray)
                .navigationViewStyle(.stack)        
            }.padding(.all).background(Color.gray)
            
        }.padding(.all).background(Color.gray)
    }
}
