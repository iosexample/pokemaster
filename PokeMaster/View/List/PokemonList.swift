//
//  PokemonList.swift
//  PokeMaster
//
//  Created by dong on 6/3/2020.
//  Copyright © 2020 IOSEXAMPLE. All rights reserved.
//

import SwiftUI

struct PokemonList: View {
  @State var searchText: String = ""
  
  var body: some View {
    ScrollView {
      TextField("搜索", text: $searchText)
        .frame(height: 40)
        .padding(.horizontal, 25)
    }
  }
}

struct PokemonList_Previews: PreviewProvider {
  static var previews: some View {
    PokemonList()
  }
}
