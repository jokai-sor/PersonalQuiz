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
//        print(movedAnswers!)
        
        
    }
    
    
    
    // 2. Определить наиболее часто встречающийся тип животного
    // 3. Отобразить результаты в соотвствии с этим животным
    
}
