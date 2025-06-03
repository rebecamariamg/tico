//
//  RecipeModel.swift
//  ProjetoAcademy
//
//  Created by Rebeca Maria de Morais Guimães on 25/05/25.
//

import Foundation

func getCategories() -> [String] {
    return ["Receitas sem fogo", "Receitas no forno", "Receitas no fogão"]
}

func getRecipesByCategory(category: String) -> [Receita] {
    return recipesByCategoria[category] ?? []
}

private let recipesByCategoria = Dictionary(grouping: receitas, by: { $0.categoria })

private let receitas: [Receita] = [
    
    //Receitas sem fogão
    Receita(
        nome: "Gelatina", capaReceita: "Salada de frutas", bannerImage: "Salada de frutas", categoria: "Receitas sem fogo", ingredientes: ["Ingrediente 1", "Ingrediente 2", "Ingrediente 3"], tempoDePreparo: "60 minutos", passos: [
            Passo(
                descricao: "Com a ajuda de um garfo, amasse as bananas.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            ),
            Passo(
                descricao: "Misture os ovos e a farinha.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            ),
            Passo(
                descricao: "Cozinhe as panquecas em uma frigideira.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            )
        ]
    ),
    Receita(
        nome: "Gelatina", capaReceita: "Cake Pop", bannerImage: "Salada de frutas",  categoria: "Receitas sem fogo", ingredientes: ["Ingrediente 1", "Ingrediente 2", "Ingrediente 3"], tempoDePreparo: "60 minutos",
        passos: [
            Passo(
                descricao: "Com a ajuda de um garfo, amasse as bananas.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            ),
            Passo(
                descricao: "Misture os ovos e a farinha.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            ),
            Passo(
                descricao: "Cozinhe as panquecas em uma frigideira.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            )
        ]
    ),
    Receita(
        nome: "Gelatina", capaReceita: "Mousse de limão",bannerImage: "Salada de frutas",  categoria: "Receitas sem fogo", ingredientes: ["Ingrediente 1", "Ingrediente 2", "Ingrediente 3"], tempoDePreparo: "60 minutos", passos: [
            Passo(
                descricao: "Com a ajuda de um garfo, amasse as bananas.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            ),
            Passo(
                descricao: "Misture os ovos e a farinha.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            ),
            Passo(
                descricao: "Cozinhe as panquecas em uma frigideira.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            )
        ]
    ),
    Receita(
        nome: "Gelatina", capaReceita: "Patê de atum",bannerImage: "Salada de frutas",  categoria: "Receitas sem fogo", ingredientes: ["Ingrediente 1", "Ingrediente 2", "Ingrediente 3"], tempoDePreparo: "60 minutos", passos: [
            Passo(
                descricao: "Com a ajuda de um garfo, amasse as bananas.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            ),
            Passo(
                descricao: "Misture os ovos e a farinha.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            ),
            Passo(
                descricao: "Cozinhe as panquecas em uma frigideira.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            )
        ]
    ),
    Receita(
        nome: "Gelatina", capaReceita: "Gelatina",bannerImage: "Salada de frutas",  categoria: "Receitas sem fogo", ingredientes: ["Ingrediente 1", "Ingrediente 2", "Ingrediente 3"], tempoDePreparo: "60 minutos", passos: [
            Passo(
                descricao: "Com a ajuda de um garfo, amasse as bananas.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            ),
            Passo(
                descricao: "Misture os ovos e a farinha.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            ),
            Passo(
                descricao: "Cozinhe as panquecas em uma frigideira.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            )
        ]
    ),
    
    //Receitas no forno
    Receita(
        nome: "Mufin de chocolate", capaReceita: "Patê de atum",bannerImage: "Salada de frutas",  categoria: "Receitas no forno", ingredientes: ["Ingrediente 1", "Ingrediente 2", "Ingrediente 3"], tempoDePreparo: "60 minutos", passos: [
            Passo(
                descricao: "Com a ajuda de um garfo, amasse as bananas.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            ),
            Passo(
                descricao: "Misture os ovos e a farinha.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            ),
            Passo(
                descricao: "Cozinhe as panquecas em uma frigideira.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            )
        ]
    ),
    Receita(
        nome: "Mufin de chocolate", capaReceita: "Salada de frutas",bannerImage: "Salada de frutas",  categoria: "Receitas no forno", ingredientes: ["Ingrediente 1", "Ingrediente 2", "Ingrediente 3"], tempoDePreparo: "60 minutos", passos: [
            Passo(
                descricao: "Com a ajuda de um garfo, amasse as bananas.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            ),
            Passo(
                descricao: "Misture os ovos e a farinha.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            ),
            Passo(
                descricao: "Cozinhe as panquecas em uma frigideira.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            )
        ]
    ),
    Receita(
        nome: "Mufin de chocolate", capaReceita: "Gelatina",bannerImage: "Salada de frutas",  categoria: "Receitas no forno", ingredientes: ["Ingrediente 1", "Ingrediente 2", "Ingrediente 3"], tempoDePreparo: "60 minutos", passos: [
            Passo(
                descricao: "Com a ajuda de um garfo, amasse as bananas.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            ),
            Passo(
                descricao: "Com a ajuda de um garfo, amasse as bananas.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            ),
            Passo(
                descricao: "Cozinhe as panquecas em uma frigideira.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            )
        ]
    ),
    Receita(
        nome: "Mufin de chocolate", capaReceita: "Cake Pop",bannerImage: "Salada de frutas",  categoria: "Receitas no forno", ingredientes: ["Ingrediente 1", "Ingrediente 2", "Ingrediente 3"], tempoDePreparo: "60 minutos", passos: [
            Passo(
                descricao: "Com a ajuda de um garfo, amasse as bananas.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            ),
            Passo(
                descricao: "Misture os ovos e a farinha.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            ),
            Passo(
                descricao: "Cozinhe as panquecas em uma frigideira.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            )
        ]
    ),
    Receita(
        nome: "Mufin de chocolate", capaReceita: "Mousse de limão",bannerImage: "Salada de frutas",  categoria: "Receitas no forno", ingredientes: ["Ingrediente 1", "Ingrediente 2", "Ingrediente 3"], tempoDePreparo: "60 minutos", passos: [
            Passo(
                descricao: "Com a ajuda de um garfo, amasse as bananas.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            ),
            Passo(
                descricao: "Misture os ovos e a farinha.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            ),
            Passo(
                descricao: "Cozinhe as panquecas em uma frigideira.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            )
        ]
    ),
    
    //Receias no fogão
    Receita(
      nome: "Panqueca de banana",
      capaReceita: "Panqueca",
     bannerImage: "Salada de frutas",  categoria: "Receitas no fogão",
      ingredientes: [
        "2 bananas",
        "1/2 xícara de aveia em flocos",
        "2 ovos",
        "1 colher de chá de extrato de baunilha",
        "Chocolate picado a gosto"
      ],
      tempoDePreparo: "20 minutos",
      passos: [
        Passo(
          descricao: "Amasse bem as bananas usando um garfo.",
          animacao: [
            "PanquecaP1.1", "PanquecaP1.2", "PanquecaP1.3", "PanquecaP1.4",
            "PanquecaP1.5", "PanquecaP1.6", "PanquecaP1.7", "PanquecaP1.8", "PanquecaP1.9"
          ]
        ),
        Passo(
          descricao: "Adicione os dois ovos no mesmo recipiente.",
          animacao: [
            "PanquecaP2.1", "PanquecaP2.2", "PanquecaP2.3", "PanquecaP2.4",
            "PanquecaP2.5", "PanquecaP2.6", "PanquecaP2.7", "PanquecaP2.8",
            "PanquecaP2.9", "PanquecaP2.10", "PanquecaP2.11", "PanquecaP2.12"
          ]
        ),
        Passo(
          descricao: "Acrescente a essência de baunilha na mistura",
          animacao: [
            "PanquecaP3.1", "PanquecaP3.2", "PanquecaP3.3",
            "PanquecaP3.4", "PanquecaP3.5", "PanquecaP3.6"
          ]
        ),
        Passo(
          descricao: "Misture até a massa ficar bem homogênea e lisa.",
          animacao: [
            "PanquecaP4.1", "PanquecaP4.2", "PanquecaP4.3", "PanquecaP4.4",
            "PanquecaP4.5", "PanquecaP4.6", "PanquecaP4.7", "PanquecaP4.8",
            "PanquecaP4.9", "PanquecaP4.10"
          ]
        ),
        Passo(
          descricao: "Adicione agora a aveia em flocos com cuidado.",
          animacao: [
            "PanquecaP5.1", "PanquecaP5.2", "PanquecaP5.3",
            "PanquecaP5.4", "PanquecaP5.5", "PanquecaP5.6"
          ]
        ),
        Passo(
          descricao: "Depois, coloque o chocolate picado a gosto.",
          animacao: [
            "PanquecaP6.1", "PanquecaP6.2", "PanquecaP6.3",
            "PanquecaP6.4", "PanquecaP6.5", "PanquecaP6.6", "PanquecaP6.7"
          ]
        ),
        Passo(
          descricao: "Misture novamente até a massa incorporar bem.",
          animacao: [
            "PanquecaP7.1", "PanquecaP7.2", "PanquecaP7.3", "PanquecaP7.4",
            "PanquecaP7.5", "PanquecaP7.6", "PanquecaP7.7", "PanquecaP7.8",
            "PanquecaP7.9", "PanquecaP7.10"
          ]
        ),
        Passo(
          descricao: "Unte a frigideira com manteiga antes de aquecer",
          animacao: [
            "PanquecaP8.1", "PanquecaP8.2", "PanquecaP8.3", "PanquecaP8.4", "PanquecaP8.5",
            "PanquecaP8.6", "PanquecaP8.7", "PanquecaP8.8", "PanquecaP8.9", "PanquecaP8.10",
            "PanquecaP8.11", "PanquecaP8.12", "PanquecaP8.13", "PanquecaP8.14"
          ]
        ),
        Passo(
          descricao: "Aqueça bem a frigideira no fogão médio ou alto",
          animacao: [
            "PanquecaP7.1", "PanquecaP7.2", "PanquecaP7.3", "PanquecaP7.4",
            "PanquecaP7.5", "PanquecaP7.6", "PanquecaP7.7", "PanquecaP7.8",
            "PanquecaP7.9", "PanquecaP7.10"
          ]
        ),
        Passo(
          descricao: "Use uma concha para despejar porções da massa",
          animacao: [
            "PanquecaP7.1", "PanquecaP7.2", "PanquecaP7.3", "PanquecaP7.4",
            "PanquecaP7.5", "PanquecaP7.6", "PanquecaP7.7", "PanquecaP7.8",
            "PanquecaP7.9", "PanquecaP7.10"
          ]
        ),
        Passo(
          descricao: "Espere formar bolhinhas na superfície da massa",
          animacao: [
            "PanquecaP7.1", "PanquecaP7.2", "PanquecaP7.3", "PanquecaP7.4",
            "PanquecaP7.5", "PanquecaP7.6", "PanquecaP7.7", "PanquecaP7.8",
            "PanquecaP7.9", "PanquecaP7.10"
          ]
        ),
        Passo(
          descricao: "Quando surgirem, vire com cuidado para dourar",
          animacao: [
            "PanquecaP7.1", "PanquecaP7.2", "PanquecaP7.3", "PanquecaP7.4",
            "PanquecaP7.5", "PanquecaP7.6", "PanquecaP7.7", "PanquecaP7.8",
            "PanquecaP7.9", "PanquecaP7.10"
          ]
        ),
        Passo(
          descricao: "Sirva quente, com mel ou a cobertura que quiser",
          animacao: [
            "PanquecaP7.1", "PanquecaP7.2", "PanquecaP7.3", "PanquecaP7.4",
            "PanquecaP7.5", "PanquecaP7.6", "PanquecaP7.7", "PanquecaP7.8",
            "PanquecaP7.9", "PanquecaP7.10"
          ]
        ),
      ],
    ),



    Receita(
        nome: "Panqueca de banana", capaReceita: "Cake Pop",bannerImage: "Salada de frutas",  categoria: "Receitas no fogão", ingredientes: ["Ingrediente 1", "Ingrediente 2", "Ingrediente 3"], tempoDePreparo: "60 minutos", passos: [
            Passo(
                descricao: "Com a ajuda de um garfo, amasse as bananas.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            ),
            Passo(
                descricao: "Misture os ovos e a farinha.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            ),
            Passo(
                descricao: "Cozinhe as panquecas em uma frigideira.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            )
        ]
    ),
    Receita(
        nome: "Panqueca de banana", capaReceita: "Salada de frutas",bannerImage: "Salada de frutas",  categoria: "Receitas no fogão", ingredientes: ["Ingrediente 1", "Ingrediente 2", "Ingrediente 3"], tempoDePreparo: "60 minutos", passos: [
            Passo(
                descricao: "Com a ajuda de um garfo, amasse as bananas.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            ),
            Passo(
                descricao: "Misture os ovos e a farinha.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            ),
            Passo(
                descricao: "Cozinhe as panquecas em uma frigideira.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            )
        ]
    ),
    Receita(
        nome: "Panqueca de banana", capaReceita: "Mousse de limão",bannerImage: "Salada de frutas",  categoria: "Receitas no fogão", ingredientes: ["Ingrediente 1", "Ingrediente 2", "Ingrediente 3"], tempoDePreparo: "60 minutos", passos: [
            Passo(
                descricao: "Com a ajuda de um garfo, amasse as bananas.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            ),
            Passo(
                descricao: "Misture os ovos e a farinha.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            ),
            Passo(
                descricao: "Cozinhe as panquecas em uma frigideira.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            )
        ]
    ),
    Receita(
        nome: "Panqueca de banana", capaReceita: "Patê de atum",bannerImage: "Salada de frutas",  categoria: "Receitas no fogão", ingredientes: ["Ingrediente 1", "Ingrediente 2", "Ingrediente 3"], tempoDePreparo: "60 minutos", passos: [
            Passo(
                descricao: "Com a ajuda de um garfo, amasse as bananas.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            ),
            Passo(
                descricao: "Misture os ovos e a farinha.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            ),
            Passo(
                descricao: "Cozinhe as panquecas em uma frigideira.",
                animacao: ["BananaAmassada1", "BananaAmassada2", "BananaAmassada3", "BananaAmassada4", "BananaAmassada5", "BananaAmassada6", "BananaAmassada7", "BananaAmassada8", "BananaAmassada9"]
            )
        ]
    )

    
]
