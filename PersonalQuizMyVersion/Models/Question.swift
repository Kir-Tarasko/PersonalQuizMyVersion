//
//  Question.swift
//  PersonalQuizMyVersion
//
//  Created by Кирилл Тараско on 02.05.2022.
//

struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
    static func getQuestion() -> [Question] {
        [
            Question(
                title: "Какую пищу вы предпочитаете?",
                type: .single,
                answers: [
                    Answer(title: "Стейк", type: .dog),
                    Answer(title: "Рыба", type: .cat),
                    Answer(title: "Морковь", type: .rabbit),
                    Answer(title: "Кукуруза", type: .turtle)
                ]
            ),
            Question(
                title: "Что вам нравится больше?",
                type: .multiple,
                answers: [
                    Answer(title: "Плавать", type: .dog),
                    Answer(title: "Спать", type: .cat),
                    Answer(title: "Обнимать", type: .rabbit),
                    Answer(title: "Есть", type: .turtle)
                ]
            ),
            Question(
                title: "Либите ли вы поездки на машине?",
                type: .ranged,
                answers: [
                    Answer(title: "Ненавижу", type: .cat),
                    Answer(title: "Нервничаю", type: .rabbit),
                    Answer(title: "Не замечаню", type: .turtle),
                    Answer(title: "Обожаю", type: .dog)
                ]
            )
        ]
    }
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

struct Answer {
    let title: String
    let type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "You - dog"
        case .cat:
            return "You - cat"
        case .rabbit:
            return "You - rabbit"
        case .turtle:
            return "You - turtle"
        }
    }
}



