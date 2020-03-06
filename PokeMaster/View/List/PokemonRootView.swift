//
//  PokemonRootView.swift
//  PokeMaster
//
//  Created by dong on 6/3/2020.
//  Copyright © 2020 IOSEXAMPLE. All rights reserved.
//

import SwiftUI

struct PokemonRootView: View {
  @EnvironmentObject var store: Store
  
  var body: some View {
    NavigationView {
      PokemonList().navigationBarTitle("宝可梦列表")
//      if store.appState.pokemonList.pokemons == nil {
//        Text("Loading...").onAppear() {
//          self.store.dispatch(.loadPokemons)
//        }
//      } else {
//        PokemonList().navigationBarTitle("宝可梦列表")
//      }
    }
  }
}

struct PokemonListRoot_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      PokemonRootView()//.environmentObject(Store())
    }
  }
}
