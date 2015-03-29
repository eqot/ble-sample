import UIKit

class ViewController: UIViewController {

    let connection = Connection()
    
    @IBOutlet weak var resultLabel: UILabel!

    @IBAction func run(sender: UIButton) {
        resultLabel.text = "OK"
    }

}

