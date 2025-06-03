//
//  RecipesData.swift
//  ProjetoAcademy
//
//  Created by Rebeca Maria de Morais Guimães on 21/05/25.
//

import Foundation

struct Receita: Hashable {
    let id = UUID()
    let nome: String
    let capaReceita: String
    let bannerImage: String
    let categoria: String
    let ingredientes: [String]
    let tempoDePreparo: String
    let passos: [Passo]
    
}

struct Passo: Hashable {
    let id = UUID()
    let descricao: String
    let animacao: [String]
}
