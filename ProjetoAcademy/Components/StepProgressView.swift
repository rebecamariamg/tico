//
//  StepProgressView.swift
//  ProjetoAcademy
//
//  Created by Rebeca Maria de Morais Guimães on 26/05/25.
//

import SwiftUI

struct StepProgressView: View {
    let totalSteps: Int
    var currentStep: Int

    var body: some View {
        VStack {
            GeometryReader { geometry in
                let totalSpacing = CGFloat(totalSteps - 1) * 8
                let availableWidth = geometry.size.width - totalSpacing
                let capsuleWidth = totalSteps > 0 ? max(availableWidth / CGFloat(totalSteps), 1) : 1

                HStack(spacing: 8) {
                    ForEach(1...totalSteps, id: \.self) { step in
                        Capsule()
                            .fill(step <= currentStep ? Color(red: 0.235, green: 0.643, blue: 0.682) : Color.white.opacity(0.5))
                            .frame(width: capsuleWidth, height: 10)
                    }
                }
            }
            .frame(height: 10)
        }
        .padding(.horizontal)
    }
}

#Preview {
    StepProgressView(totalSteps: 10, currentStep: 3)
}
