//
//  ContentView.swift
//  PokeMaster
//
//  Created by Dong on 6/3/2020.
//  Copyright © 2020 IOSEXAMPLE. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        PokemonRootView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Store())
    }
}
