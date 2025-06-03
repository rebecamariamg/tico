//
//  Route.swift
//  ProjetoAcademy
//
//  Created by Rebeca Maria de Morais Guimães on 17/05/25.
//

import Foundation

enum Route: Hashable {
    case detailedRecipe(Receita)
    case recipe(Receita)
    case memories
    case cameraCapture
}

