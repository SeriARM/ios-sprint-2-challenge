import UIKit

class TableViewCell: UITableViewCell {
  
    
    static let reuseIdentifier = "cell"
    
    @IBOutlet var colorTitleLabel: UILabel!
    @IBOutlet var mainImageView: UIImageView!
    
    @IBOutlet weak var backColor: UIView!
}
