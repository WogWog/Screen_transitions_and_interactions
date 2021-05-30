//
//  MotherViewController.swift
//  Project7_Homework
//
//  Created by Соколов Михаил on 26.05.2021.
//

import UIKit

class MotherViewController: UIViewController {
    
    private var DaughterVC: DaughterViewController?
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? DaughterViewController, segue.identifier == "ShowDaughter"{
            vc.ColorMother = self
            
            self.DaughterVC = vc
            
        }
    }
    @IBAction func GreenButton(_ sender: Any) {
        DaughterVC?.view.backgroundColor = .green
    }
    
    @IBAction func YellowButton(_ sender: Any) {
        DaughterVC?.view.backgroundColor = .yellow
    }
    
    @IBAction func PurpleButton(_ sender: Any) {
        DaughterVC?.view.backgroundColor = .purple
    }
    
    
}

extension MotherViewController: ChooseMotherColorDelegate{
    func ChooseMotherColor(Color: UIColor) {
        view.backgroundColor = Color
    }
    
    
}
