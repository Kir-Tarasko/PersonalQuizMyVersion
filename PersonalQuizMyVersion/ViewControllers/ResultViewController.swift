//
//  ResultViewController.swift
//  PersonalQuizMyVersion
//
//  Created by Кирилл Тараско on 07.05.2022.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var animalCharacter: UILabel!
    @IBOutlet weak var animalDefinition: UILabel!
    
    var responces:[Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        updateResult()
        
    }
}

extension ResultViewController {
    
    private func updateResult() {
        
        var frequencyOfAnimals: [AnimalType: Int] = [:]
        let animals = responces.map { $0.type }
        
        for animal in animals {
            if let animalTypeCount = frequencyOfAnimals[animal] {
                frequencyOfAnimals.updateValue(animalTypeCount + 1, forKey: animal)
            } else {
                frequencyOfAnimals[animal] = 1
            }
        }
        
        let sortedFrequencyOfAnimals = frequencyOfAnimals.sorted { $0.value > $1.value }
        guard let mostFrequencyAnimal = sortedFrequencyOfAnimals.first?.key else { return }
        
        updateUI(with: mostFrequencyAnimal)
    }
    
    private func updateUI(with animal: AnimalType?) {
        animalCharacter.text = "Вы = \(animal?.rawValue ?? "🐶")"
        animalDefinition.text = animal?.definition ?? ""
    }
}
