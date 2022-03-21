//
//  DataManager.swift
//  Achievement tracker
//
//  Created by Виталий Подшибякин on 21.03.2022.
//

class DataManager {
    
    static let shared = DataManager()
    
    let hadesAchivements = [
        "Escaped Tartarus",
        "Escaped Asphodel",
        "Escaped Elysium",
        "Something From Everyone",
        "Hold the Onions",
        "Is There No Escape?",
        "Weapon of Fate",
        "To Charon's Credit",
        "The Useless Trinket",
        "Skelly's Last Lamentations"
    ]
    
    let hadesAchivementsDescriptions = [
        "Пройди Тартар.",
        "Пройди Асфодель.",
        "Пройди Элизиум.",
        "Пройди Элизиум с условием «Чрезвычайные меры».",
        "Пройди врата Эребуса, не получив урона.",
        "Пройди попытку побега.",
        "Пройди попытку побега с тайным аспектом оружия.",
        "Получи дисконтную карту.",
        "Получи первый приз Скелли.",
        "Получи второй приз Скелли."
    ]
    
    let hadesGPoints = ["25G", "25G", "25G", "30G", "5G", "50G", "5G", "30G", "25G", "75G"]
    
    let oriAchivements = [
        "Journey Begins",
        "The Ancient Being",
        "Get back here!",
        "Lets be Friends",
        "Rotten Inside",
        "Run for your Life",
        "Close call",
        "Obtaining Clarity",
        "Solid Ground",
        "Top of the World"
    ]
    
    let oriDescription = [
        "Завершите пролог.",
        "Повстречайте Древнего.",
        "Найдите персонажа в тени.",
        "Найдите неожиданного друга.",
        "Войдите в Древо Гинзо.",
        "Очистите сердце Древа Гинзо.",
        "Спаситесь от опасности.",
        "Очистите Туманный лес от тумана.",
        "Восстановите ветра Нибела.",
        "Вскарабкайтесь на вершину Нибела."
    ]
    
    let oriGPoints = ["20G", "20G", "20G", "40G", "20G", "60G", "20G", "30G", "60G", "40G"]
    
    private init() {}
    
}

