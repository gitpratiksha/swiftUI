import SwiftUI

struct ListContent: View {
    var body: some View{
        var items = ["mango", "apple", "banana", "orange", "jkjdkjsj", "a", "d", "k"]
        VStack(alignment: .trailing){
                Rectangle().frame(width: .infinity, height: 70)
                    .foregroundColor(Color.blue)
                    .overlay(
                    HStack{
                        Text("Hello").foregroundColor(Color.red)
                        Button(action: {}){
                            Text("Ok")
                        }.buttonStyle(.borderedProminent)
                    }
                )
            
            List{
                Text("1")
                Text("2")
                Text("3")
                Text("4")
                Image("Landscape_4").resizable()

            }
            
            List(items, id: \.self){ item in
                Text(item)
                
            }.navigationTitle("Navigation Title")
            
        }
        
    }
}
