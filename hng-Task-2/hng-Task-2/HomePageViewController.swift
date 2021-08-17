

import UIKit

class HomePageViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var nameButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeHideKeyboard()
    }
    
    func getName()  {
       
        if let name = nameTF.text?.trimmingCharacters(in: .whitespaces) {
            nameLabel.text = name
        }
    }
    

    @IBAction func didTapNameButton(_ sender: UIButton) {
        getName()
    }
    
}

extension HomePageViewController {
    func initializeHideKeyboard(){
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
     target: self,
     action: #selector(dismissMyKeyboard))
     view.addGestureRecognizer(tap)
     }
    
    @objc func dismissMyKeyboard(){
    view.endEditing(true)
    }
}

