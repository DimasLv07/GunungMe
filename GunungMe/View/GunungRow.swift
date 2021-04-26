//
//  HeroRow.swift
//  MyHero
//
//  Created by dimas pendriansyah on 08/04/21.
//

import SwiftUI

struct GunungRow: View {
  var gunung: Gunung
  
  var body: some View {
    ZStack{
      
    HStack{
      
      Image(gunung.foto)
        .resizable()
        .frame(width: 48.0, height: 48.0)
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.black, lineWidth: 2)).padding(.trailing, 16)
      
      VStack(alignment: .leading, spacing: 0){
        Text(gunung.nama)
          .font(.system(size: 20)).bold()
          
        Text(gunung.description)
          .font(.system(size: 18))
          .lineLimit(3)
        
      }.padding(.leading, 3)
    }.padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
  }
  }
}


struct GunungRow_Previews: PreviewProvider {
  static var previews: some View {
    GunungRow(gunung: gunungs[1]).previewLayout(.fixed(width: 400, height: 100))
  }
}
