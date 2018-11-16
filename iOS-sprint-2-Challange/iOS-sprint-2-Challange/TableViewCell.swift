

import UIKit

class TableViewCell: UITableViewCell {
    static let reuseIdentifier = "cell"
    
    @IBOutlet weak var colorTitelLabel: UILabel!
    @IBOutlet weak var swatchView: UIView!
}
