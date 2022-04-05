//
//  imageViewController.swift
//  Yemekler Uygulaması
//
//  Created by muhammet on 10.02.2022.
//

import UIKit

class imageViewController: UIViewController {

    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var foodLabel: UILabel!
    
    var selecetedFoodPrice = 0.0
    var selectedFoodNames = ""
    var selecetedFoodImages = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodLabel.text = selectedFoodNames
        imageView.image = selecetedFoodImages
        (priceLabel.text) = String("\(selecetedFoodPrice) TL")
        
        
        
    }
    

    

}
