//
//  ViewController.swift
//  tableview
//
//  Created by MaestroD1 on 9/23/22.
//  Copyright © 2022 MaestroD1. All rights reserved.
//

import UIKit

class PeliculasController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tvPeliculas: UITableView!
    var peliculas : [Pelicula] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        peliculas.append(Pelicula(titulo: "Interstellar", año: "2004", director: "Christopher Nolan", genero: "Sci-fi/Aventura"))
        peliculas.append(Pelicula(titulo: "The Godfather", año: "1972", director: "Francis Ford Coppola", genero: "Crimen/Thriller"))
        peliculas.append(Pelicula(titulo: "The Godfather: Part II", año: "1974", director: "Francis Ford Coppola", genero: "Crimen/Drama"))
        peliculas.append(Pelicula(titulo: "The Godfather: Part III", año: "1990", director: "Francis Ford Coppola", genero: "Crimen/Drama"))
        peliculas.append(Pelicula(titulo: "The Social Network", año: "2010", director: "David Fincher", genero: "Drama/Historia"))
        peliculas.append(Pelicula(titulo: "Goodfellas", año: "1990", director: "Martin Scorsese", genero: "Crimen/Drama"))
        peliculas.append(Pelicula(titulo: "The Wolf of Wall Street", año: "2013", director: "Martin Scorsese", genero: "Comedia/Drama"))
        peliculas.append(Pelicula(titulo: "Scarface", año: "1983", director: "Brian De Palma", genero: "Crimen/Drama"))
        peliculas.append(Pelicula(titulo: "Pulp Fiction", año: "1994", director: "Quentin Tarantino", genero: "Crimen/Drama"))
        peliculas.append(Pelicula(titulo: "Inglorious Basterds", año: "2009", director: "Quentin Tarantino", genero: "Guerra/Accion"))
        peliculas.append(Pelicula(titulo: "Forrest Gump", año: "1994", director: "Robert Zemeckis", genero: "Drama/Romance"))
        peliculas.append(Pelicula(titulo: "Hereditary", año: "2018", director: "Ari Aster", genero: "Horror/Drama"))
        peliculas.append(Pelicula(titulo: "Midsommar", año: "2019", director: "Ari Aster", genero: "Horror/Thriller"))
        peliculas.append(Pelicula(titulo: "Southpaw", año: "2015", director: "Antoine Fuqua", genero: "Drama/Thriller"))
        peliculas.append(Pelicula(titulo: "Whiplash", año: "2014", director: "Damien Chazelle", genero: "Drama"))
        
        
        peliculas[0].personajes.append(Personaje(nombre: "Jack Dawson", interprete: "Leonardo DiCaprio"))
        peliculas[0].personajes.append(Personaje(nombre: "Rose", interprete: "Kate Winslet"))
        peliculas[1].personajes.append(Personaje(nombre: "Chabelo", interprete: "Xavier López"))
        peliculas[1].personajes.append(Personaje(nombre: "Pepito", interprete: "Martín Ramos"))
        peliculas[2].personajes.append(Personaje(nombre: "Julio", interprete: "Pedro Fernandez"))
        peliculas[2].personajes.append(Personaje(nombre: "Paulina", interprete: "Gabriela Hassel"))
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peliculas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPelicula") as! CeldaPeliculaController
        
        celda.lblDirector.text = peliculas[indexPath.row].director
        celda.lblAño.text = peliculas[indexPath.row].año
        celda.lblTitulo.text = peliculas[indexPath.row].titulo
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesPeliculaController
        destino.pelicula = peliculas[tvPeliculas.indexPathForSelectedRow!.row]
    }

}

