//
//  SelectedColorViewController.swift
//  Project7_Homework
//
//  Created by Соколов Михаил on 26.05.2021.
//

import UIKit

protocol ChangeColorDelegate {
    func DidTapChangeColor(Text: String)
}

class SelectedColorViewController: UIViewController {
    
    
    var ChangeColor:ChangeColorDelegate?
    var SelectedColor = ""
    var BackGround = UIColor()
    
    @IBOutlet weak var ColorLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ColorLabel.text = SelectedColor
        view.backgroundColor = BackGround

    }
    
    @IBAction func GreenButton(_ sender: Any) {
        
        ChangeColor?.DidTapChangeColor(Text: "Выбран зеленый")
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func BlueButton(_ sender: Any) {
        
        ChangeColor?.DidTapChangeColor(Text: "Выбран синий")
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
    @IBAction func RedButton(_ sender: Any) {
        
        ChangeColor?.DidTapChangeColor(Text: "Выбран красный")
        
        dismiss(animated: true, completion: nil)
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        dismiss(animated: true, completion: nil)
    }
    }

