//
//  DetailedRecipeView.swift
//  ProjetoAcademy
//
//  Created by Rebeca Maria de Morais Guimães on 16/05/25.
//

import SwiftUI

struct DetailedRecipeView: View {
    @Binding var path: [Route]
    var receita: Receita
    
    var body: some View {
        
        Image(receita.bannerImage)
                            .resizable()
                            .scaledToFill()
                            .clipped()
                            .padding(.bottom, 10)
        
        ScrollView {
            VStack(spacing: 20) {
                
                Text("Tempo de Preparo:")
                    .font(.title2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .fontWeight(.semibold)
                
                Text(receita.tempoDePreparo)                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("Ingredientes:")
                    .font(.title2)
                    .padding(.top)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .fontWeight(.semibold)
                
                ForEach(receita.ingredientes, id: \.self) { ingrediente in
                    Text(ingrediente)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                Button("Iniciar receita ilustrada") {
                    path.append(.recipe(receita))
                }
                Button("Camera") {
                    path.append(.cameraCapture)
                }
                
            }
            .padding()
        }
        .navigationTitle(receita.nome)
    }
    
}


#Preview {
    DetailedRecipeView(
        path: .constant([]),
        receita: Receita(
            nome: "Exemplo de Receita",
            capaReceita: "ImagemExemplo",
            bannerImage: "Salada de frutas",
            categoria: "Receitas no forno",
            ingredientes: ["Ingrediente 1", "Ingrediente 2"],
            tempoDePreparo: "30 minutos",
            passos: [
                Passo(
                    descricao: "Primeiro, separe os ingredientes.",
                    animacao: ["ImagemPasso1_1", "ImagemPasso1_2"]
                ),
                Passo(
                    descricao: "Depois, misture bem.",
                    animacao: ["ImagemPasso2_1", "ImagemPasso2_2"]
                )
            ]
        )
    )
}
