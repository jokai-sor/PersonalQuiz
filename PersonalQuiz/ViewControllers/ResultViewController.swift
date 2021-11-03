//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Nikita Zharinov on 01/11/2021.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var animalLabel: UILabel!
    @IBOutlet var animalText: UILabel!
    
    var movedAnswers: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        var types: [AnimalType : Int] = [:]
        
        movedAnswers.forEach {
            if let value = types[$0.type] {
                types.updateValue(value + 1, forKey: $0.type)
            } else {
                types.updateValue(1, forKey: $0.type)
            }
        }
        
        guard let animalType = (types.sorted() {
            $0.value > $1.value
        }).first else { return }
        
        animalLabel.text = "\(animalType.key.rawValue)"
        animalText.text = animalType.key.definition
    }
}
