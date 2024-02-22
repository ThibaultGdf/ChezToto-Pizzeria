//
//  MenuViewController.swift
//  UIKit-ChezToto-Pizzeria
//
//  Created by Thibault GODEFROY on 21/02/2024.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
	
	@IBOutlet weak var table: UITableView!
	
	// Nombre de sections
	func numberOfSections(in tableView: UITableView) -> Int {
		CategoryEnum.allCases.count
	}
	
	// Nombre d'élémént dans ma TableView
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		let category = CategoryEnum.allCases[section]
		switch category {
		case .entree:
			return appetizers.count
		case .pizza:
			return pizzas.count
		}
	}
	
	// Contenu de ma cellule
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
		let category = CategoryEnum.allCases[indexPath.section]
		switch category {
			   case .entree:
				   let currentFlat = appetizers[indexPath.row]
				   configureCell(cell, with: currentFlat)
			   case .pizza:
				   let currentFlat = pizzas[indexPath.row]
				   configureCell(cell, with: currentFlat)
			   }
		return cell
	}
	
	func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		return CategoryEnum.allCases[section].rawValue
//		let category = CategoryEnum.allCases[section]
//		switch category {
//		case .entree:
//			return CategoryEnum.entree.rawValue
//		case .pizza:
//			return CategoryEnum.pizza.rawValue
//		}
	}
	
	private func configureCell(_ cell: CustomTableViewCell, with flat: Flat) {
		 cell.picture.image = flat.picture
		 cell.title.text = flat.title
		 cell.subtitle.text = flat.subtitle
		 cell.price.text = flat.price
	 }
	
	// Donne une taille à mon image
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
			return 100
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		table.dataSource = self
		table.delegate = self
	}
}
