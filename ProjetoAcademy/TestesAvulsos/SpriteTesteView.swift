//
//  SpriteTesteView.swift
//  ProjetoAcademy
//
//  Created by Rebeca Maria de Morais Guimães on 22/05/25.
//

import SwiftUI

struct SpriteTesteView: View {
    @State private var frameIndex = 0
    
    let frames = [
        "BananaAmassada1", "BananaAmassada2", "BananaAmassada3",
        "BananaAmassada4", "BananaAmassada5", "BananaAmassada6",
        "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"
    ]
    let timer = Timer.publish(every: 0.2, on: .main, in: .common).autoconnect()
    var body: some View {
                Image(frames[frameIndex])
                    .resizable()
                    .scaledToFit()
                    .frame(width: 514, height: 514)
                    .onReceive(timer) { _ in
                        frameIndex = (frameIndex + 1) % frames.count
                    }
    }
}

#Preview {
    SpriteTesteView()
}

