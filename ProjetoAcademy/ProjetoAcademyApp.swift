//
//  ProjetoAcademyApp.swift
//  ProjetoAcademy
//
//  Created by Rebeca Maria de Morais Guimães on 22/05/25.
//

import SwiftUI

@main
struct ProjetoAcademyApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                HomeView() // Ou sua tela inicial
            }
            .modelContainer(for: Memoria.self)
        }
    }
}

