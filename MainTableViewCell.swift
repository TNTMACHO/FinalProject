//
//  MainTableViewCell.Swift
//  Most Popular News
//
//  Created by Manav Tandon on 05/06/22.
//   
//

import UIKit

class MainTableViewCell: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        title.numberOfLines = 2
        reporter.numberOfLines = 2
        
        title.font = UIFont.boldSystemFont(ofSize: 18)
        // Initialization code
    }
    
    @IBOutlet var title: UILabel!
    
    @IBOutlet var reporter: UILabel!
    
    @IBOutlet var date: UILabel!
    
    
    
}


