//
//  DaughterViewController.swift
//  Project7_Homework
//
//  Created by Соколов Михаил on 26.05.2021.
//

import UIKit

protocol ChooseMotherColorDelegate{
    func ChooseMotherColor(Color: UIColor)
}

class DaughterViewController: UIViewController {

    var ColorMother: ChooseMotherColorDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func GreenButton(_ sender: Any) {
        
        ColorMother?.ChooseMotherColor(Color: .green)
    }
    
    @IBAction func YellowButton(_ sender: Any) {
        
        ColorMother?.ChooseMotherColor(Color: .yellow)
    }
    
    @IBAction func PurpleButton(_ sender: Any) {
        
        ColorMother?.ChooseMotherColor(Color: .purple)
    }

}

