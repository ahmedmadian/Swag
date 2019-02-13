//
//  ProductVC.swift
//  Swag
//
//  Created by Madian on 2/13/19.
//  Copyright © 2019 Madian. All rights reserved.
//

import UIKit

class ProductVC: UIViewController {

     private(set) var Products = [Product]()
    
    //MARK: ------------ Outlets ----------------
    @IBOutlet weak var ProductsCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ProductsCollectionView.delegate = self
        ProductsCollectionView.dataSource = self
        
    }
    
    func initProducts(withCategory category: Category){
        Products = ProductService.getProduct(withCategory: category)!
        navigationItem.title = category.title!
        //navigationItem.backBarButtonItem?.title = ""
    }
    
    
}

extension ProductVC : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCollectionViewCell", for: indexPath) as? ProductCollectionViewCell{
            cell.UpadateCell(withProduct: Products[indexPath.row])
            return cell
        }
        return ProductCollectionViewCell()
    }
    
    
}
