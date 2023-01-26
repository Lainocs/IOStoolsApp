//
//  Pizza.swift
//  deGarriguesNicolasSwift
//
//  Created by Nicolas de Garrigues on 26/01/2023.
//

import Foundation

struct Pizza : Identifiable {
    let id = UUID()
    let part: Int
    var tomato: Bool
    var cheese: Bool
    var pickle: Bool
    let comment: String
}

