//
//  Model.swift
//  UIKit-ChezToto-Pizzeria
//
//  Created by Thibault GODEFROY on 21/11/2023.
//

import Foundation

struct Dish {
    let category: String
    let name: String
    let description: String
    let price: String
}

class Dishes {
    func getDishes() -> [Dish] {
        let dishes = [
            Dish(category: "Entrées", name: "Garlic bread", description: "Du pain légèrement croustillant parfumé à l’ail", price: "3.50"),
            Dish(category: "Entrées", name: "Potatoes", description: "Quartiers de pommes de terre dorés au four", price: "3.50"),
            Dish(category: "Pizzas", name: "Margarita", description: "La classique base tomate et fromage", price: "10.00"),
            Dish(category: "Pizzas", name: "Végétarienne", description: "Base tomate, légumes de saison et fromage", price: "12.00"),
            Dish(category: "Pizzas", name: "Peperoni", description: "Base tomate, peperoni et fromage", price: "13.50"),
            Dish(category: "Pizzas", name: "4 fromages", description: "Base crème, emmental, morbier, chèvre et gorgonzola", price: "12.50")
        ]
        return dishes
    }
}
