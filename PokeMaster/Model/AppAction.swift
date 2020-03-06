//
//  AppAction.swift
//  PokeMaster
//
//  Created by 张艺哲 on 2020/1/8.
//  Copyright © 2020 OneV's Den. All rights reserved.
//

import Foundation

enum AppAction {
    case login(email: String, password: String)
    case accountBehaviorDone(result: Result<User, AppError>)
    case logout
    case emailValid(valid: Bool)
    case passwordValid(status: AppState.Settings.PasswordValidStatus)
    case loadPokemons
    case loadPokemonsDone(result: Result<[PokemonViewModel], AppError>)
    case canRegisterValid(valid: Bool)
}
