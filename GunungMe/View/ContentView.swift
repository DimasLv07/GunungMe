import SwiftUI

struct ContentView: View {
  var body: some View {
    
    TabView{
      
        
      GunungList()
        .tabItem {
          Image(systemName: "house.fill")
          Text("Mounts")
        }
      About()
        .tabItem {
          Image(systemName: "person.fill")
          Text("About")
        }
        
      
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
