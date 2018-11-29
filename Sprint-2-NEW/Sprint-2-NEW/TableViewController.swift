
import UIKit

class TableViewController: UITableViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

        // number of sections, number of rows, and cell for row
        override func numberOfSections(in tableView: UITableView) -> Int {
            return CrayonHelper.shared.sectionCount
        }
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return CrayonHelper.shared.rowCountFor(section: section)
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier, for: indexPath) as? TableViewCell
                else { fatalError("Unable to dequeue proper cell") }
            
            // Customize the cell
           
            cell.colorTitleLabel.text = CrayonHelper.shared.crayonFor(indexPath: indexPath).name
            
            cell.backColor.backgroundColor = CrayonHelper.shared.crayonFor(indexPath: indexPath).color
            
            cell.mainImageView.image = CrayonHelper.shared.crayonFor(indexPath: indexPath).image
            
            return cell
        }
        override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            let label = UILabel()
            label.textAlignment = .center
            label.backgroundColor = .black
            label.textColor = .white
            label.text = CrayonHelper.shared.sectionNameFor(indexPath: IndexPath(row: 0, section: section))
            return label
        }
        override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
            return CrayonHelper.shared.sectionTitles()
        }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.backgroundColor = UIColor.lightGray // Needs to be changed
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = UIColor.clear
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let destination = segue.destination as? DetailViewController,
            let indexPath = tableView.indexPathForSelectedRow else { return }
        // let crayon = CrayonHelper.shared.crayonFor(indexPath: IndexPath.init(row: 0, section: 0))
        let crayon = CrayonHelper.shared.crayonFor(indexPath: indexPath)
        destination.crayon = crayon
    }
}
