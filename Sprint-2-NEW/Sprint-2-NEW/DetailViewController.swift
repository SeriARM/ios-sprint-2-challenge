import UIKit

class DetailViewController: UIViewController {
    
    var crayon: Crayon?
    
    @IBOutlet weak var topViewColor: UIView!
    @IBOutlet weak var mainViewColor: UIView!
    @IBOutlet weak var bottomViewColor: UIView!
    
    @IBOutlet weak var pictureImageView: UIImageView!
    
    @IBAction func likeTopButton(_ sender: Any) {
        // need func
    }
    @IBAction func likeBottomButton(_ sender: Any) {
    }
    
    @IBOutlet weak var colorNameLabel: UILabel!
    @IBOutlet weak var colorInfo: UILabel!
    
    
    
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        guard let crayon = crayon else {fatalError("no color")}
//        
//        view.backgroundColor = crayon.color
//        pictureImageView.image = crayon.image
//        colorNameLabel.text = crayon.name
//        topViewColor.backgroundColor = crayon.color
//        mainViewColor.backgroundColor = crayon.color
//        bottomViewColor.backgroundColor = crayon.color
//        
//      
//        }
        
    }
    

