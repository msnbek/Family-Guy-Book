//
//  SecondVC.swift
//  Family Guy Book
//
//  Created by Mahmut Şenbek on 26.09.2022.
//

import UIKit

class SecondVC: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var jobLabelText: UILabel!
    @IBOutlet weak var nameLabelText: UILabel!
    
    @IBOutlet weak var bioLabelText: UILabel!
    var selectedFamilyGuy : FamilyGuy?
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabelText.text = selectedFamilyGuy?.name
        jobLabelText.text = selectedFamilyGuy?.job
        imageView.image = selectedFamilyGuy?.image
        bioLabelText.text = selectedFamilyGuy?.bio
    }
    

   

}
