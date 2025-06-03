//
//  OnboardViewTeste.swift
//  ProjetoAcademy
//
//  Created by Rebeca Maria de Morais Guimães on 23/05/25.
//

import SwiftUI

struct OnboardViewTeste: View {
    let systemImageName: String
        let title: String
        let description: String
        
        var body: some View {
            VStack(spacing: 20) {
                Image(systemName: systemImageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.teal)
                
                Text(title)
                    .font(.title).bold()
                
                Text(description)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
            }
            .padding(.horizontal, 40)
        }
}

