//
//  PokemonInfoPanelAbilityList.swift
//  PokeMaster
//
//  Created by Dong on 7/3/2020.
//  Copyright © 2020 IOSEXAMPLE. All rights reserved.
//

import SwiftUI

extension PokemonInfoPanel {
  struct AbilityList: View {
    let model: PokemonViewModel
    let abilityModels: [AbilityViewModel]?
    
    var body: some View {
      VStack(alignment: .leading, spacing: 12) {
        Text("技能")
          .font(.headline)
          .fontWeight(.bold)
        if abilityModels != nil {
          ForEach(abilityModels!) { ability in
            Text(ability.name)
              .font(.subheadline)
              .foregroundColor(self.model.color)
            Text(ability.descriptionText)
              .font(.footnote)
              .foregroundColor(Color(hex: 0xAAAAAA))
          }
        }
      }
      .frame(maxWidth: .infinity, alignment: .leading)
    }
  }
}

struct PokemonInfoPanelAbilityList_Previews: PreviewProvider {
  static var previews: some View {
    PokemonInfoPanel.AbilityList(
      model: .sample(id: 1),
      abilityModels: AbilityViewModel.sample(pokemonID: 1)
    )
  }
}
