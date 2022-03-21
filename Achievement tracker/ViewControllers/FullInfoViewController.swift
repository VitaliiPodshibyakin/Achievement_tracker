//
//  FullInfoViewController.swift
//  Achievement tracker
//
//  Created by Виталий Подшибякин on 21.03.2022.
//

import UIKit

class FullInfoViewController: UIViewController {
    
    var info = ""
    var gPoint = ""
    var achievement = ""
    
    @IBOutlet var infoLabel: UILabel!
    @IBOutlet var achievementImage: UIImageView!
    @IBOutlet var gPointLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = achievement
        infoLabel.text = info
        gPointLabel.text = gPoint
        achievementImage.image = UIImage(named: achievement)

    }
}
