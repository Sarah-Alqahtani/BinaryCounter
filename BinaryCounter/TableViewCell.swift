

import UIKit

class TableViewCell: UITableViewCell {
  
    var delegate:CellDelegate?
    @IBOutlet weak var numbers: UILabel!
    @IBAction func add(_ sender: Any) {
        delegate?.addfunc(value: Int(numbers.text!)!)
    }
    
    @IBAction func subtract(_ sender: Any) {
        delegate?.subtractfunc(value: Int(numbers.text!)!)
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
