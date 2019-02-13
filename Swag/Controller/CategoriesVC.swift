//
//  ViewController.swift
//  Swag
//
//  Created by Madian on 2/13/19.
//  Copyright © 2019 Madian. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController {

    let categories = CategoryService.getCateories()
    
    //MARK: ------------ Outlets ----------------
    @IBOutlet weak var CategoriesTableView: UITableView!
    
    //MARK: ------------ System Callbacks ----------------
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        CategoriesTableView.delegate = self
        CategoriesTableView.dataSource = self
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? ProductVC {
            let barButton = UIBarButtonItem()
            barButton.title = ""
            navigationItem.backBarButtonItem = barButton
            destinationVC.initProducts(withCategory: sender as! Category)
        }
    }


}

extension CategoriesVC : UITableViewDelegate, UITableViewDataSource{
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryTableViewCell", for: indexPath) as? CategoryTableViewCell {
            cell.UpadateCell(withCategory: categories[indexPath.row])
            return cell
        }
        return CategoryTableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCategory = categories[indexPath.row]
        performSegue(withIdentifier: "ProductSegue", sender: selectedCategory)
    }
}

