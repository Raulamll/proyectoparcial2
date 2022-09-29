//
//  DetallesPeliculaController.swift
//  tableview
//
//  Created by MaestroD1 on 9/26/22.
//  Copyright © 2022 MaestroD1. All rights reserved.
//

import UIKit

class DetallesPeliculaController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var pelicula : Pelicula?
    
    @IBOutlet weak var tvPersonajes: UITableView!
    @IBOutlet weak var lblDirector: UILabel!
    @IBOutlet weak var lblAño: UILabel!
    @IBOutlet weak var lblGenero: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Detalles de película"
        
        if pelicula != nil {
            self.title = pelicula?.titulo
            lblDirector.text = pelicula?.director
            lblAño.text = pelicula?.año
            lblGenero.text = pelicula?.genero
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pelicula!.personajes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPersonaje") as! CeldaPersonajeController
        
        celda.lblPersonaje.text = pelicula?.personajes[indexPath.row].nombre
        celda.lblInterprete.text = pelicula?.personajes[indexPath.row].interprete
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 61
    }
}
