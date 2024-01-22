import SwiftUI

struct NavigationBar: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: DetailView()) {
                    Text("Go to orders view")
                }
            }
            .navigationTitle("Our resturant")
            .toolbarBackground(Color.green, for: .navigationBar)
        }
    }
}

struct DetailView: View {
    var body: some View {
        Text("Orders view")
            .navigationTitle("Order title")
    }
}

struct AppBarPreview: PreviewProvider {
    static var previews: some View{
        NavigationBar()
    }
}
