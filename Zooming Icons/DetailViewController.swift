//
//  DetailViewController.swift
//  Zooming Icons
//
//  Created by Alex on 2015-11-26.
//  Copyright © 2015 Alex. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    
    
    var currentSocialItem: SocialItem?

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = currentSocialItem?.colour
        nameLabel.text = currentSocialItem?.name
        summaryLabel.text = currentSocialItem?.summary
        logoImageView.image = currentSocialItem?.image
        
    }

    
    @IBAction func handleBackButton(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
