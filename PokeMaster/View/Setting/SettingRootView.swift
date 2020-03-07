//
//  SettingRootView.swift
//  PokeMaster
//
//  Created by Dong on 7/3/2020.
//  Copyright © 2020 IOSEXAMPLE. All rights reserved.
//

import SwiftUI

struct SettingRootView: View {
  var body: some View {
    NavigationView {
      SettingView().navigationBarTitle("设置")
    }
  }
}

struct SettingRootView_Previews: PreviewProvider {
  static var previews: some View {
    SettingRootView()
  }
}
