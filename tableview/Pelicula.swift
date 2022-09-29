//
//  Pelicula.swift
//  tableview
//
//  Created by MaestroD1 on 9/23/22.
//  Copyright © 2022 MaestroD1. All rights reserved.
//

class Pelicula {
    var titulo : String
    var año : String
    var director : String
    var genero : String
    var personajes : [Personaje] = []
    
    init(titulo: String, año: String, director: String, genero: String) {
        self.titulo = titulo
        self.año = año
        self.director = director
        self.genero = genero
    }
}

