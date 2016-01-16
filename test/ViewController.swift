//  ViewController.swift

import UIKit


class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        var j = 0
        let chaine = "bonjour le monde"
        for i in 1...10 {
            j = i % 4
            print("\(i) - \(chaine)!!".uppercaseString.lowercaseString.capitalizedString)
            if j == 0 {
               print("\(i) est un multiple de 4")
            }
        }  // for i
        
        // http://stackoverflow.com/questions/30767594/iterate-through-a-string-swift-2-0
        for car in chaine.unicodeScalars {
             print("\(car.value):\(car) ", terminator: "")
        
        }
        for car in chaine.characters {
            print("\(car) ", terminator: "")
        }
        for car in chaine.characters.reverse() {
            print("\(car) ", terminator: "")
        }
        print("")
        //
        
        testerIntrospection()
        
    } // viewDidLoad()

    // MARK: - Mes fonctions
    
    func testerIntrospection(){
    
        class Maitre {
            var type:String { get {return "Maitre"} }
        }
        
        class Esclave: Maitre {
            override var type:String { get {return "Maitre"} }
        }
        
        let personnage: Any = Esclave()
        
        if (personnage is Maitre) {
            print("est de type \( (personnage as! Maitre).type)")
        }
        
        if (personnage is Esclave) {
            print("est de type Esclave")
        }
        
    }
    
    // MARK: - Méthodes de protocoles
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        print(textField.text!)
        return true
    }
    
    override func didReceiveMemoryWarning() {
        print("Oups, manque de mémoire ...")
    }
} // class ViewController

