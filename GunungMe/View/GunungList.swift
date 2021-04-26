//
//  Hero.swift
//  MyHero
//
//  Created by dimas pendriansyah on 08/04/21.
//

import SwiftUI

struct GunungList: View {
  var body: some View {
      NavigationView{
          List(gunungs) { gunung in
              NavigationLink(destination: GunungDetail(gunung: gunung)){
                  HStack{
                      Image(gunung.foto)
                          .resizable()
                          .frame(width: 48.0, height: 48.0)
                          .clipShape(Circle())
                          .overlay(Circle().stroke(Color.white, lineWidth: 2)).padding(.trailing, 16)
                        .shadow(radius: 5)
                      
                      VStack(alignment: .leading){
                          Text(gunung.nama).font(.system(size: 20)).bold()
                          Text(gunung.description).font(.system(size: 18)).bold()
                      }
                  }.padding()
              }
          }.navigationBarTitle(Text("Daftar Gunung"))
      }.navigationViewStyle(StackNavigationViewStyle())
  }
}
struct GunungList_Previews: PreviewProvider {
    static var previews: some View {
        GunungList()
    }
}

