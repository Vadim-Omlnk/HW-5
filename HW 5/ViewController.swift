import SwiftUI
import UIKit

class BarManager {
    static let getInstance = BarManager()
    private init() {}

}

class Beer {
    let name: String
    let price: Int
    let country: String
    let restofbeer: Double
    
    init(name: String, price: Int, country: String, restofbeer: Double) {
        self.name = name
        self.price = price
        self.country = country
        self.restofbeer = restofbeer
    }
}

public final class ViewController: UIViewController {
    
    // Label of first beer
    @IBOutlet weak var nameoffirstbeer: UILabel!
    @IBOutlet weak var priceoffirstbeer: UILabel!
    @IBOutlet weak var countryoffirstbeer: UILabel!
    @IBOutlet weak var restoffirstbeer: UILabel!
    @IBOutlet weak var sumofpricefirstbeer: UILabel!
    
    //Label of second beer
    @IBOutlet weak var nameofsecondbeer: UILabel!
    @IBOutlet weak var priceofsecondbeer: UILabel!
    @IBOutlet weak var countryofsecondbeer: UILabel!
    @IBOutlet weak var restofsecondbeer: UILabel!
    @IBOutlet weak var sumofpricesecondbeer: UILabel!
    
    //SELL Button of first beer (Добить)
    @IBAction func selloffirstbeer(_ sender: Any) {
        var sumoffistbeer = 0
        sumoffistbeer += beer1.price
        
        sumofpricefirstbeer.text = "\(sumoffistbeer)"
    }
    
    //SELL Button of second beer (Добить)
    @IBAction func sellofsecondbeer(_ sender: Any) {
        var sumofsecondbeer = 0
        sumofsecondbeer += beer2.price
        
        sumofpricesecondbeer.text = "\(sumofsecondbeer)"
    }
    
   // LABEL Выручка
    @IBOutlet weak var revenue: UILabel!
    
    
   // BUTTON Выручка
    @IBAction func buttonofrevenue(_ sender: Any) {
        
    }
    
    
    
    let beer1 = Beer(name: "Guinness", price: 7, country: "Ireland", restofbeer: 8.0)
    
    let beer2 = Beer(name: "Palm", price: 5, country: "England", restofbeer: 10.0)

  public override func viewDidLoad() {
        super.viewDidLoad()
      
      nameoffirstbeer.text = beer1.name
      priceoffirstbeer.text = "\(beer1.price)"
      countryoffirstbeer.text = beer1.country
      restoffirstbeer.text = "\(beer1.restofbeer)"
     
      nameofsecondbeer.text = beer2.name
      priceofsecondbeer.text = "\(beer2.price)"
      countryofsecondbeer.text = beer2.country
      restofsecondbeer.text = "\(beer2.restofbeer)"
      
    
    }



}

