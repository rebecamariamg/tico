//
//  PageViewTeste.swift
//  ProjetoAcademy
//
//  Created by Rebeca Maria de Morais Guimães on 23/05/25.
//

import SwiftUI

struct PageViewTeste: View {
    @State private var selection = 0
    let totalPages = 3
    
    var body: some View {
        TabView {
            OnboardViewTeste(systemImageName: "figure.run", title: "First Intro", description: "Great for health and sport")
            OnboardViewTeste(systemImageName: "figure.walk.motion", title: "Second Intro", description: "Great for health and sport")
            OnboardViewTeste(systemImageName: "figure.open.water.swim", title: "Third Intro", description: "Great for health and sport")
                }
                .tabViewStyle(.page(indexDisplayMode: .always))
                .indexViewStyle(.page(backgroundDisplayMode: .always))
            }
        }
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PageViewTeste()
    }
}

