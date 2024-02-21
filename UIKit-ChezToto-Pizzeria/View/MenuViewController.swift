//
//  MenuViewController.swift
//  UIKit-ChezToto-Pizzeria
//
//  Created by Thibault GODEFROY on 21/02/2024.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
	
	@IBOutlet weak var table: UITableView!
	
	// Nombre d'élémént dans ma TableView
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return data.count
	}
	
	// Contenu de ma cellule
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let flat = data[indexPath.row]
		let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
		cell.picture.image = flat.picture
		cell.title.text = flat.title
		cell.subtitle.text = flat.subtitle
		cell.price.text = flat.price
		return cell
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
