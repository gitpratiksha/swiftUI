import SwiftUI

struct User: Identifiable{
    var id = UUID()
    var name: String
    var age: Int?
    }


struct DisplayPerson: View{
var userInfo: User = User(name: "Pratiksha Indalkar")
    var body: some View{
        VStack {
            Text(userInfo.name)
            
        }
    }
}
struct DisplayPerson_Preview: PreviewProvider {
    static var previews: some View {
      DisplayPerson()
    }
}
