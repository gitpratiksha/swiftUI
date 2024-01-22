import SwiftUI

struct LoginPage:View{
    @State private var username = ""
    @State private var password = ""
    @State private var wrongPass = 0
    @State private var wrongUserName = 0
    @State private var openLoginPage = false

    var body: some View{
        NavigationView{
            ZStack{
                Color.indigo
                    .ignoresSafeArea()
                
                Circle()
                    .scale(1.55)
                    .foregroundColor(.white.opacity(0.15))
                
                Circle()
                    .scale(1.30)
                    .foregroundColor(.white)
                
                VStack{
                    Text("Login").font(.largeTitle).bold()
                        .padding()
                    
                    TextField("Username", text: $username)
                        .padding()
                        .background(Color.black.opacity(0.15))
                        .frame(width: 300, height: 60)
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUserName))
                    
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .background(Color.black.opacity(0.15))
                        .frame(width: 300, height: 60)
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPass))
                    
                    
                    Button("Login"){
                        _authenticateUser(username: username, password: password)
                        
                    }.foregroundColor(.white)
                        .frame(width: 200, height: 50)
                        .background(.indigo)
                        .cornerRadius(10)
                        .padding()
                    
                    NavigationLink(destination: Text("Yo are Logged In \(username)"), isActive: $openLoginPage){
                        EmptyView()
                    }
                    

                    
                }
                
            }
        }.navigationBarTitle("Login")
    }
    
    func _authenticateUser(username: String, password: String){
        if(username.lowercased() == "pratiksha"){
            wrongUserName = 0
            if(password.lowercased() == "password"){
                openLoginPage = true
                wrongPass = 0
            }else{
                wrongPass = 2
            }
        }else{
            wrongUserName = 2
        }
        
    }
}


struct MyPreviewProvider_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}

