//
//  MainTab.swift
//  PokeMaster
//
//  Created by dong on 6/3/2020.
//  Copyright © 2020 IOSEXAMPLE. All rights reserved.
//

import SwiftUI

struct MainTab: View {
  var body: some View {
    TabView {
      PokemonRootView().tabItem {
        Text("列表")
      }
    }
  }
}
