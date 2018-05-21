//
//  hotel.swift
//  hotelApp
//
//  Created by Jose Cordova on 1/5/18.
//  Copyright © 2018 Jose Cordova. All rights reserved.
//

import UIKit
class Hotel {
    var name: String!
    var image: UIImage!
    var description: String!
    var imageCollection : [String] = []
    var status : StatusHotel = .cancel

    init(name: String, image: UIImage, description: String, imageCollection: [String]) {
        self.name = name
        self.image = image
        self.description = description
        self.imageCollection = imageCollection
        self.status = .cancel
    }
    
    convenience init(){
        self.init(name: "", image: UIImage(named:"luxor0")!, description: "", imageCollection: [])
    }
    
    static func getData() -> [Hotel]{
        let rawData =   [
            [
                "name":"Luxor",
                "image":"luxor0",
                "description":"Emplazado en el Strip de Las Vegas, el Luxor Las Vegas es un hotel de 4 estrellas conocido por su forma piramidal inspirada en el Antiguo Egipto.\n\n         Las habitaciones tienen sistema de climatización, set de té y café, caja fuerte, utensilios para planchar, minibar, televisor, escritorio y baño privado con artículos de aseo personal y secador de cabello.\nEl Luxor Las Vegas dispone de casino, cuatro piscinas, spa, centro de bienestar, recepción 24 horas, gimnasio, consigna de equipaje, servicio de habitaciones, servicio de alquiler de vehículos, tiendas, peluquería, wifi, parking y está adaptado a personas de movilidad reducida.\n\n                Este alojamiento cuenta con siete restaurantes tipo buffet y uno a la carta, donde sirven cocina asiática, americana, mexicana e internacional.\n\nSe halla a menos de cinco minutos andando del centro comercial Mandalay Place y del club nocturno The Light Vegas. Asimismo, está a menos de diez minutos en automovil del aeropuerto internacional McCarran.",
                "imageCollection" :["luxor1", "luxor2","luxor3", "luxor4","luxor5", "luxor6","luxor7"]
            ],
            [
                "name":"Caesar's Palace",
                "image":"caesar0",
                "description":"El Caesars Palace Las Vegas cuenta con una ubicación inmejorable, justo en el corazón de Las Vegas Strip. Este emblemático complejo de 5 estrellas se caracteriza por tener una arquitectura imponente y lujosos espacio interiores.\n\nSus habitaciones son amplias y están decoradas con mobiliario moderno. Todas están equipadas con televisor, aire acondicionado, minibar, caja fuerte, escritorio y baño privado con secador de cabello y amenities de lujo.\n\nEn el Caesars Palace Las Vegas se puede disfrutar de varias piscinas, casino, discoteca, centro de spa y gimnasio. Además, ofrece servicio de recepción 24 horas, conexión wifi, parking privado y centro de negocios.\n\nLos viajeros pueden comer en los múltiples bares y restaurantes de la más variada gastronomía que alberga el hotel, como Gordon Ramsay's Pub & Grill, Mr. Chow, Guy Savoy, Nobu y Bacchanal Buffet.\n\nEl alojamiento se encuentra a poco menos de diez minutos a pie de las Fuentes del Bellagio y del Volcán del Mirage.",
                "imageCollection" :["caesar1", "caesar2","caesar3", "caesar4","caesar5", "caesar6","caesar7"]
            ],
            [
                "name":"MGM Grand",
                "image":"mgm0",
                "description":"Este elegante complejo está ubicado en Las Vegas Strip y alberga el famoso pabellón de conciertos y deportes MGM Grand Garden Arena. Además, ofrece casino y piscinas de estilo tropical.\n\nEl MGM Grand tiene un spa completo, zonas de piscina con cabañas privadas y un río lento. Además, cuenta con la nueva discoteca Hakkasan y espectáculos nocturnos como KÀ de Cirque du Soleil y Jabbawockeez.\n\nEl MGM Grand Las Vegas ofrece restaurantes galardonados como el Joel Robuchon, que sirve cocina francesa selecta. También se sirven platos clásicos de asador en el Tom Colicchio's Craftsteak, cocina china exclusiva en el Hakkasan y un menú estilo gastropub en el Michael Mina Pub 1842.\nEl MGM Grand tiene una planta de juegos amplia con máquinas tragamonedas y juegos de mesa.\n\nA las parejas les encanta la ubicación — Le han puesto un 8,3 para viajes de dos personas.",
                "imageCollection" :["mgm1", "mgm2","mgm3", "mgm4"]
            ],
            [
                "name":"Bellagio Las Vegas",
                "image":"luxor0",
                "description":"El hotel Bellagio Las Vegas destaca por sus conocidas fuentes, que ofrecen grandiosos espectáculos de agua. Además, se caracteriza por incluir un jardín botánico y un gran casino, así como por ofrecer actuaciones del Cirque du Soleil en sus escenarios.\n\nSus habitaciones están equipadas con televisor, minibar y baño privado con amenities, y algunas cuentan con varios baños, sala de estar, comedor, conserje personalizado y vistas a las fuentes.\n\nEn sus instalaciones dispone de cinco piscinas, spa, gimnasio, espectáculos, actividades recreativas, así como de tiendas, salas de eventos, conserje, servicio de habitaciones y traslados. Además, se admiten mascotas y se ofrece parking y conexión wifi.\n\nHay casi 20 restaurantes y varias cafeterías y bares en el Bellagio Las Vegas. El restaurante Lago by Julián Serrano ofrece platos italianos de este conocido cocinero con estrella Michelín, y el Prime Steakhouse se especializa en carnes y mariscos.\n\nLa noria High Roller queda a 15 minutos andando, y el Aeropuerto Internacional McCarran, a 10 minutos en automóvil.",
                "imageCollection" :["bellagio1", "bellagio2","bellagio3", "bellagio4","bellagio5", "bellagio6"]
            ],
            ]
        
        
        var data: [Hotel] = []
        for item in rawData {
            data.append(
                Hotel(
                    name: item["name"]! as! String,
                    image: UIImage(named: item["image"]! as! String)!,
                    description: item["description"]! as! String,
                    imageCollection: item["imageCollection"]! as! [String]
                )
            )
        }
        return data
    }
}

