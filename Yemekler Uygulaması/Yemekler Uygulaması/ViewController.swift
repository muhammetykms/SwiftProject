//
//  ViewController.swift
//  Yemekler Uygulaması
//
//  Created by muhammet on 10.02.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    var foodPrice = [Double]()
    var foodNames = [String]()
    var foodImages = [UIImage]()
   // var FoodPrice :[Double] = [5.00,6.00,10.00]
    
    
    var chosenFoodNames = ""
    var chosenFoodImages = UIImage()
    var chosenFoodPrice = 0.0
    
    
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    
        foodPrice.append(3.00)
        foodPrice.append(12.00)
        foodPrice.append(5.00)
        foodPrice.append(32.00)
        foodPrice.append(35.00)
        foodPrice.append(14.00)
        foodPrice.append(10.00)
        foodPrice.append(25.00)
        foodPrice.append(12.00)
        foodPrice.append(18.00)
        foodPrice.append(45.00)
        foodPrice.append(1.50)
        foodPrice.append(11.00)
        foodPrice.append(13.00)
        
        
        
        //İsim dizisine tek tek yemek isimleri eklendi
        foodNames.append("Ayran")
        foodNames.append("Baklava")
        foodNames.append("Fanta")
        foodNames.append("Izgara Somon")
        foodNames.append("Izgara Tavuk")
        foodNames.append("Kadayıf")
        foodNames.append("Kahve")
        foodNames.append("Köfte")
        foodNames.append("Lazanya")
        foodNames.append("Makarna")
        foodNames.append("Pizza")
        foodNames.append("Su")
        foodNames.append("Sütlaç")
        foodNames.append("Tiramisu")
        
        //Resim dizisine tek tek yemek resimleri eklendi
        foodImages.append(UIImage(named: "ayran")!)
        foodImages.append(UIImage(named: "baklava")!)
        foodImages.append(UIImage(named: "fanta")!)
        foodImages.append(UIImage(named: "izgarasomon")!)
        foodImages.append(UIImage(named: "izgaratavuk")!)
        foodImages.append(UIImage(named: "kadayif")!)
        foodImages.append(UIImage(named: "kahve")!)
        foodImages.append(UIImage(named: "kofte")!)
        foodImages.append(UIImage(named: "lazanya")!)
        foodImages.append(UIImage(named: "makarna")!)
        foodImages.append(UIImage(named: "pizza")!)
        foodImages.append(UIImage(named: "su")!)
        foodImages.append(UIImage(named: "sutlac")!)
        foodImages.append(UIImage(named: "tiramisu")!)
        
        //Başlık adı eklendi
        navigationItem.title = "FOODS"
        
        
        
        
        
    }
    
    //TableView'deki satırları siler
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            foodNames.remove(at: indexPath.row)
            foodImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    //TableView textlerini değiştirdik
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = foodNames[indexPath.row]
        return cell
    }
    //TableView kaç satırdan oluşacağını belirttik
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodNames.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenFoodNames = foodNames[indexPath.row]
        chosenFoodImages = foodImages[indexPath.row]
        chosenFoodPrice = foodPrice[indexPath.row]
        
        performSegue(withIdentifier: "toImageViewController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toImageViewController"{
            let destinationVC = segue.destination as! imageViewController
            
            destinationVC.selectedFoodNames = chosenFoodNames
            destinationVC.selecetedFoodImages = chosenFoodImages
            destinationVC.selecetedFoodPrice = Double(chosenFoodPrice)
        }
    }
    
    


}

