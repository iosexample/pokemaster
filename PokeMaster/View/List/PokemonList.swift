//
//  PokemonList.swift
//  PokeMaster
//
//  Created by dong on 6/3/2020.
//  Copyright © 2020 IOSEXAMPLE. All rights reserved.
//

import SwiftUI

struct PokemonList: View {
//  @State var searchText: String = ""
  @State var expandingIndex: Int?
  var body: some View {
    ScrollView {
//      TextField("搜索", text: $searchText)
//        .frame(height: 40)
//        .padding(.horizontal, 25)
      ForEach(PokemonViewModel.all) { pokemon in
        PokemonInfoRow(
          model: pokemon,
          expanded: self.expandingIndex == pokemon.id
        )
        .onTapGesture {
          withAnimation(
            .spring(
              response: 0.55,
              dampingFraction: 0.425,
              blendDuration: 0
            )
          )
          {
            if self.expandingIndex == pokemon.id {
              self.expandingIndex = nil
            } else {
              self.expandingIndex = pokemon.id
            }
          }
        }
      }
    }
  }
}

struct PokemonList_Previews: PreviewProvider {
  static var previews: some View {
    PokemonList()
  }
}
