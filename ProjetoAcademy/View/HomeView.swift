//
//  HomeView.swift
//  ProjetoAcademy
//
//  Created by Rebeca Maria de Morais Guimarães on 12/05/25.
//

import SwiftUI

struct HomeView: View {
    @State private var path: [Route] = []
    private var categorias = getCategories()
    
    let colunas = [GridItem(.fixed(250), spacing: -15), GridItem(.fixed(250), spacing: -15), GridItem(.fixed(250), spacing: -15), GridItem(.fixed(250), spacing: -15), GridItem(.fixed(250), spacing: -15)]
    
    
    var body: some View {
        NavigationStack(path: $path) {
            //Grid de receitas
            ScrollView{
                ForEach(categorias, id: \.self) { categoria in
                    
                    Text(categoria)
                        .font(.title2)
                        .padding(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .fontWeight(.semibold)
                        .padding(.top, 20)
                        .padding(.bottom, 10)
                    
                    
                    ScrollView(.horizontal){
                        LazyVGrid(columns: colunas){
                            let receitasFiltradas = getRecipesByCategory(category: categoria)
                            ForEach(receitasFiltradas, id: \.id) { receita in
                                
                                Button(action: {
                                    path.append(.detailedRecipe(receita))
                                })
                                {
                                    VStack{
                                        Image(receita.capaReceita)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height:250)
                                    }//end vstack
                                    .cornerRadius(12)
                                }//end button
                            }
                        }//end LazyVGrid
                    }//end scroll view da sessão
                    .scrollIndicators(.hidden)
                    
                }//end for each principal
            }//end scroll view principal
            .scrollIndicators(.hidden)
            
            //Navigation
            .navigationTitle("Tico de receitas")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        path.append(.memories)                        }) {
                            Text("Memórias")
                            Image(systemName: "chevron.right")
                            
                        }.foregroundColor(Color(red: 0.894, green: 0.42, blue: 0.361) )

                }
            }
            .navigationDestination(for: Route.self) { route in
                switch route {
                case .detailedRecipe (let receita):
                    DetailedRecipeView(path: $path, receita: receita)
                case .recipe(let receita):
                    RecipeView(path: $path, receita: receita)
                case .memories:
                    MemoriesView(path: $path)
                case .cameraCapture:
                    CameraCaptureView(path: $path)
                }
                
            }//End navigation
            
        }//End NavigationStack
        
        
    }//End view
}//End Body


#Preview {
    HomeView()
}
