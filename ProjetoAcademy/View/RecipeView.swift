//
//  RecipeView.swift
//  ProjetoAcademy
//
//  Created by Rebeca Maria de Morais Guimarães on 13/05/25.
//

import SwiftUI

struct RecipeView: View {
    @Binding var path: [Route]
    var receita: Receita
    @State private var showingAlert = false
    @State private var showingDetail = false
    
    
    @State private var passoIndex = 0
    @State private var frameIndex = 0
    
    let timer = Timer.publish(every: 0.3, on: .main, in: .common).autoconnect()
    
    var body: some View {
        
        let passoAtual = receita.passos[passoIndex]
        
        let frames = passoAtual.animacao
        
        VStack {
//                        Button("Registrar memória") {
//                            path.removeAll()
//                            path.append(.cameraCapture)
//                        }
            
            
            //Vstack nav + imagem + texto
            VStack{
                StepProgressView(totalSteps: receita.passos.count, currentStep: passoIndex + 1)
                    .padding(.top, 30)
                
                Spacer()
                
                //animacao
                Image(frames[frameIndex])
                    .resizable()
                    .scaledToFit()
                    .onReceive(timer) { _ in
                        frameIndex = (frameIndex + 1) % frames.count
                    }
                
                
                
                HStack(spacing: -40){
                    if passoIndex > 0 {
                        Button(action: {
                            passoIndex -= 1
                            frameIndex = 0
                        }) {
                            Image("ButtonLeft")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 22, height: 22)
                                .padding(10)
                                .background(.white)
                                .clipShape(Circle())
                        }
                        .zIndex(1)
                    }

                    VStack {
                        Text(passoAtual.descricao)
                            .font(.system(.title2, design: .rounded, weight: .bold))
                            .foregroundColor(Color(red: 0.294, green: 0.294, blue: 0.294))
                    }
                    .padding(30)
                    .background(
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.white.opacity(0.85))
                    )
                    .padding()

                    if passoIndex < receita.passos.count - 1 {
                        Button(action: {
                            passoIndex += 1
                            frameIndex = 0
                        }) {
                            Image("ButtonRight")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 22, height: 22)
                                .padding(10)
                                .background(.white)
                                .clipShape(Circle())
                        }
                    }
                }

                Spacer()
                
            }
        }                .background(
            Image("BackgroundV")
        )
   
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    showingAlert = true
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.white)
                }
                
                .confirmationDialog("Deseja mesmo sair da receita?", isPresented: $showingAlert, titleVisibility: .visible) {
                    Button("Sair", role: .destructive) {
                        path.removeAll()
                    }
                    Button("Cancelar", role: .cancel) { }
                }
            }

            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    showingDetail = true
                }) {
                    Image(systemName: "book.fill")
                        .foregroundColor(.white)
                }
            }
        }//end toolbar
        .sheet(isPresented: $showingDetail) {
            ScrollView{
                VStack(alignment: .leading, spacing: 20) {
                    Text("Ingredientes")
                        .font(.title)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Tempo de Preparo:")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text(receita.tempoDePreparo)
                    
                    Text("Ingredientes:")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    ForEach(receita.ingredientes, id: \.self) { ingrediente in
                        Text("• \(ingrediente)")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
                }
                .padding()
                
            }
            .presentationDetents([.medium])
            .padding(.top)
        }//end modal
        
    }
    
}

#Preview {
    RecipeView(
        path: .constant([]),
        receita: Receita(
            nome: "",
            capaReceita: "ImagemExemplo",
            bannerImage: "Salada de frutas",
            categoria: "Receitas no forno",
            ingredientes: ["Ingrediente 1", "Ingrediente 2"],
            tempoDePreparo: "30 minutos",
            passos: [
                Passo(
                    descricao: "Primeiro, separe os ingredientes.Primeiro, separe os ingredientes.",
                    animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
                ),
                Passo(
                    descricao: "Depois, misture bem.",
                    animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
                )
            ]
        )
        
    )
}

