import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!

    @IBAction func run(sender: UIButton) {
        let connection = Connection.sharedInstance
        
        resultLabel.text = connection.start()
    }

}

