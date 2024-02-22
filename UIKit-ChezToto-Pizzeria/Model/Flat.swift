//
//  Model.swift
//  UIKit-ChezToto-Pizzeria
//
//  Created by Thibault GODEFROY on 21/11/2023.
//

import Foundation
import UIKit

struct Flat {
	let category: CategoryEnum
	let picture: UIImage?
	let title: String
	let subtitle: String
	let price: String
}

enum CategoryEnum: CaseIterable {
	case entree
	case pizza
}

let data = [
	Flat(
		category: .entree,
		picture: UIImage(named: "garlic"),
		title: "Garlic bread",
		subtitle: "Du pain légèrement croustillant parfumé à l’ail",
		price: "3,50€"
	),
	Flat(
		category: .entree,
		picture: UIImage(named: "potatoes"),
		title: "Potatoes",
		subtitle: "Quartiers de pommes de terre dorés au four",
		price: "3,50€"
	),
	Flat(
		category: .pizza,
		picture: UIImage(named: "margarita"),
		title: "Margarita",
		subtitle: "La classique base tomate et fromage",
		price: "10,00€"
	),
	Flat(
		category: .pizza,
		picture: UIImage(named: "vegetarienne"),
		title: "Végétarienne",
		subtitle: "Base tomate, légumes de saison et fromage",
		price: "12,00€"
	),
	Flat(
		category: .pizza,
		picture: UIImage(named: "peperoni"),
		title: "Peperoni",
		subtitle: "Base tomate, peperoni et fromage",
		price: "13,50€"
	),
	Flat(
		category: .pizza,
		picture: UIImage(named: "fromages"),
		title: "4 fromages",
		subtitle: "Base crème, emmental, morbier, chèvre et gorgonzola",
		price: "12,50€"
	)
]

let appetizers = data.filter { flat in
	flat.category == .entree
}

let pizzas = data.filter { flat in
	flat.category == .pizza
}
