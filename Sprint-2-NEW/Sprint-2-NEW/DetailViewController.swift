import UIKit

class DetailViewController: UIViewController {
    
    var crayon: Crayon?
    
    @IBOutlet weak var topViewColor: UIView!
    @IBOutlet weak var mainViewColor: UIView!
    @IBOutlet weak var bottomViewColor: UIView!
    
    @IBOutlet weak var pictureImageView: UIImageView!
    
    @IBOutlet weak var likeTopButton: UIButton!
    @IBOutlet weak var likeBottemButton: UIButton!
    @IBAction func likeTopButton(_ sender: Any) {
        // need func
        
       updaiteButtonTitle()
    }
    @IBAction func likeBottomButton(_ sender: Any) {
        updaiteButtonTitle()
    }
    
    @IBOutlet weak var colorNameLabel: UILabel!
    @IBOutlet weak var colorInfo: UILabel!
    
    func updaiteButtonTitle() {
        
        if crayon?.isLiked == false {
            crayon?.isLiked = true
            likeTopButton.setTitle("❤️", for: .normal)
            likeBottemButton.setTitle("❤️", for: .normal)
        } else if crayon?.isLiked == true {
            crayon?.isLiked = false
            likeTopButton.setTitle("🤔", for: .normal)
            likeBottemButton.setTitle("🤔", for: .normal)
      
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let crayon = crayon else {fatalError("no color")}
        
        view.backgroundColor = crayon.color
        pictureImageView.image = crayon.image
        colorNameLabel.text = crayon.name
        topViewColor.backgroundColor = crayon.color
        mainViewColor.backgroundColor = crayon.color
        bottomViewColor.backgroundColor = crayon.color

        var (r, g, b): (CGFloat, CGFloat, CGFloat) = (0, 0, 0)
        crayon.color.getRed(&r, green: &g, blue: &b, alpha: nil)
        
      
        }
    
    }
    

