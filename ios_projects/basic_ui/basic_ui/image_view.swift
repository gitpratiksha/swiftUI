import SwiftUI

struct ImageView: View{
    @State private var fullText: String = "This is some editable text..."
    @State private var password: String = "password"

    var body: some View{
        ScrollView{
            VStack(alignment: .leading){
                Image("swiftui").resizable()
                    .frame(width: 100, height: 100)
                    .scaledToFit()
                
                TextField("", text: $fullText, axis: .vertical)
                    .lineLimit(4)
                    .background(.red.opacity(0.2))
                    .foregroundColor(Color.gray)
                    .font(.custom("HelveticaNeue", size: 14
                                 ))
                    .lineSpacing(5)
                
                SecureField ("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                    
                
                
                
                
                Grid {
                    GridRow {
                        Text("Row 1")
                        ForEach(0..<2) { _ in Color.red }
                    }
                    GridRow {
                        Text("Row 2")
                        ForEach(0..<5) { _ in Color.green }
                    }
                    GridRow {
                        Text("Row 3")
                        ForEach(0..<4) { _ in Color.blue }
                    }
                }
                
            }
                        }
        
    }
}


struct ImagePreview: PreviewProvider{
    static var previews: some View{
        ImageView()
    }
}
