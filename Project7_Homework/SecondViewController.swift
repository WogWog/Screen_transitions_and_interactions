//
//  SecondViewController.swift
//  Project7_Homework
//
//  Created by Соколов Михаил on 26.05.2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    var NameColor = "Выбран зеленый"
    @IBOutlet weak var SelectedNameColorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SelectedNameColorLabel.text = NameColor
    }

    @IBAction func ChangeButton(_ sender: Any) {
        performSegue(withIdentifier: "ShowSelect", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? SelectedColorViewController, segue.identifier == "ShowSelect", SelectedNameColorLabel.text == "Выбран зеленый"{
            vc.modalPresentationStyle = .fullScreen
            
        vc.ChangeColor = self
            vc.BackGround = .green
            vc.SelectedColor = "Выбран зеленый"
            
            
            
        }
        
        if let vc = segue.destination as? SelectedColorViewController, segue.identifier == "ShowSelect", SelectedNameColorLabel.text == "Выбран синий"{
            vc.modalPresentationStyle = .fullScreen
            
        vc.ChangeColor = self
            vc.BackGround = .blue
            vc.SelectedColor = "Выбран синий"
    }
        
        if let vc = segue.destination as? SelectedColorViewController, segue.identifier == "ShowSelect", SelectedNameColorLabel.text == "Выбран красный"{
            vc.modalPresentationStyle = .fullScreen
        vc.ChangeColor = self
            vc.BackGround = .red
            vc.SelectedColor = "Выбран красный"
    }
    
}
}

extension SecondViewController: ChangeColorDelegate{
    func DidTapChangeColor(Text: String) {
        SelectedNameColorLabel.text = Text
    }
    
    
}
