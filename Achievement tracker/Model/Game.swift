//
//  Game.swift
//  Achievement tracker
//
//  Created by Виталий Подшибякин on 21.03.2022.
//

struct Game {
    
    let title: String
    let achivements: [String]
    let gPoints: [String]
    let descriptions: [String]
    
}

extension Game {
    static func getGames() -> [Game] {
        let games = [
                    Game(title: "Hades",
                         achivements: DataManager.shared.hadesAchivements,
                         gPoints: DataManager.shared.hadesGPoints,
                         descriptions: DataManager.shared.hadesAchivementsDescriptions),
                    Game(title: "Ori and the Blind Forest",
                         achivements: DataManager.shared.oriAchivements,
                         gPoints: DataManager.shared.oriGPoints,
                         descriptions: DataManager.shared.oriDescription)
                    ]
        return games
    }
}
