//
//  SettingView.swift
//  PokeMaster
//
//  Created by Dong on 7/3/2020.
//  Copyright © 2020 IOSEXAMPLE. All rights reserved.
//

import SwiftUI

struct SettingView: View {
  @ObservedObject var settings = Settings()
  
  var body: some View {
    Form {
      accountSection
      optionSection
      actionSection
    }
  }
  
  var accountSection: some View {
    Section(header: Text("账户")) {
      Picker(
        selection: $settings.accountBehavior,
        label: Text(""))
      {
        ForEach(Settings.AccountBehavior.allCases, id: \.self) {
          Text($0.text)
        }
      }
      .pickerStyle(SegmentedPickerStyle())
      TextField("电子邮箱", text:$settings.email)
      SecureField("密码", text:$settings.password)
      if settings.accountBehavior == .register {
        SecureField("确认密码", text: $settings.verifyPassword)
      }
      Button(settings.accountBehavior.text) {
        print("登录/注册")
      }
    }
  }
  
  var optionSection: some View {
    Section(header: Text("选项")) {
      Toggle(isOn: $settings.showEnglishName) {
        Text("显示英文名")
      }
      Picker(
        selection: $settings.sorting,
        label: Text("排序方式"))
      {
        ForEach(Settings.Sorting.allCases, id: \.self) {
          Text($0.text)
        }
      }
      Toggle(isOn: $settings.showFavoriteOnly) {
        Text("只显示收藏")
      }
    }
  }
  
  var actionSection: some View {
    Section(header: Text("")) {
      Button(action: {
        
      }) {
        Text("清空缓存").foregroundColor(.red)
      }
    }
  }
}

struct SettingView_Previews: PreviewProvider {
  static var previews: some View {
    SettingView()
  }
}
