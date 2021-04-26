//
//  HeroDetail.swift
//  MyHero
//
//  Created by dimas pendriansyah on 08/04/21.
//

import SwiftUI

struct GunungDetail: View {
  var gunung: Gunung
  var body: some View {
    ScrollView{
      Spacer(minLength: 15)
      Text(gunung.nama)
        .font(.title)
        .bold()
        .font(.system(size: 24, weight: .bold, design: .monospaced))
      Spacer(minLength: 25)
      VStack{
        
        
        Spacer(minLength: 20)
        
        
        
        Image(gunung.foto)
          .resizable()
          .frame(width: 300, height: 200)
          .clipShape(Circle())
          .overlay(Circle().stroke(Color.white, lineWidth: 5))
          .shadow(radius: 10)
        Spacer(minLength: 50)
        
        HStack{
          Text("Nama Gunung:")
            .bold()
            
          Spacer(minLength: 10)
          Text(gunung.nama)
            .font(.system(size: 16))
        }; Spacer(minLength: 20)
        
        
        
        HStack{
          Text("Tinggi Gunung:")
            .bold()
          Spacer(minLength: 10)
          Text(gunung.tinggiGunung)
            .font(.system(size: 16))
        }; Spacer(minLength: 20)
        
        
        
        HStack{
          Text("Tipe Gunung:")
            .bold()
          Spacer(minLength: 10)
          
          Text(gunung.tipeGunung)
            .font(.system(size: 16))
        }; Spacer(minLength: 20)
        
        HStack{
          Text("Lokasi Gunung:")
            .bold()
          Spacer(minLength: 10)
          Text(gunung.description)
            .font(.system(size: 16))
        }
        
        
      }
    }.padding(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 16))
  }
}

struct GunungDetail_Previews: PreviewProvider {
  static var previews: some View {
    GunungDetail(gunung: gunungs[0])
  }
}
