import UIKit


class CrayonDetailViewController: UIViewController {
    var crayon: Crayon?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let crayon = crayon else { return }
        label.text = crayon.name
    }
}
