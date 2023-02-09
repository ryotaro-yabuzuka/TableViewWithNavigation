//
//  DetailViewController.swift
//  TableViewWithNavigation
//
//  Created by Ryotaro Yabuzuka on 2023/02/09.
//

import UIKit

class DetailViewController: UIViewController {

    var message: String?
    
    @IBOutlet var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        messageLabel.text = message
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
