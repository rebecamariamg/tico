//
//  Memoria.swift
//  ProjetoAcademy
//
//  Created by Rebeca Maria de Morais Guimães on 29/05/25.
//

import Foundation
import SwiftData

@Model

class Memoria {
    
    @Attribute(.externalStorage) var photo: Data?
    
    init(photo: Data? = nil) {
        self.photo = photo
    }
}
