

import UIKit

class DetailViewController: UICollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let headernib = UINib(nibName: "CollectionReusableHeaderView", bundle: nil)
        collectionView.register(headernib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: CollectionReusableHeaderView.reuseIdentifier)
    }
    
  override  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return CrayonHelper.shared.sectionCount
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return CrayonHelper.shared.rowCountFor(section: section)
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DetailViewCell.reuseIdentifier, for: indexPath) as? DetailViewCell else { fatalError("Error")
            
        }
        cell.detailAboutColor.text = CrayonHelper.shared.sectionNameFor(indexPath: indexPath)
        cell.nameOfColorLabel.text = CrayonHelper.shared.sectionTitles()
        // cell.swatchView.backgroundColor = CrayonHelper.crayonFor(<#T##CrayonHelper#>)
        
        return cell
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout else {
            fatalError("Unable to retrieve layout")
        }
        
        let amount: CGFloat = 32
        layout.sectionInset = UIEdgeInsets(top: amount, left: amount, bottom: amount, right: amount)
        layout.itemSize = CGSize(width: 120, height: 120)
        layout.headerReferenceSize = CGSize(width: collectionView.bounds.width, height: 32)
    }
 
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
    
    guard kind == UICollectionView.elementKindSectionHeader else {
    fatalError("failed header")
    }
    guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: CollectionReusableHeaderView.reuseIdentifier, for: indexPath) as? CollectionReusableHeaderView else {
    fatalError("failed dequeue of header view")
    }
        header.nameLabel.text = CrayonHelper.shared.sectionNameFor(indexPath: indexPath)
    return header
}
}
