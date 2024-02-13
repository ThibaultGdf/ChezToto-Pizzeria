//
//  Restaurant.swift
//  UIKit-ChezToto-Pizzeria
//
//  Created by Thibault GODEFROY on 21/11/2023.
//

import Foundation

struct Restaurant {
    let schedule: [String: String]
    let address: String
    let webSite: String
    let phoneNumber: String
}

class Restaurants {
    func getRestaurants() -> [Restaurant] {
        let restaurants = [
            Restaurant(
                schedule: [
                    "Lundi": "Fermé",
                    "Mardi": "11h30 - 14h30・18h30 - 22h00",
                    "Mercredi": "11h30 - 14h30・18h30 - 22h00",
                    "Jeudi": "11h30 - 14h30・18h30 - 22h00",
                    "Vendredi": "11h30 - 14h30・18h30 - 22h00",
                    "Samedi": "11h30 - 14h30・18h30 - 22h00",
                    "Dimanche": "Fermé"
                ],
                address: "12  Rue Tolbiac - 75013 Paris",
                webSite: "www.cheztotopizza.fr",
                phoneNumber: "06 12 34 56 78"
            )
        ]
        return restaurants
    }
}
