//
//  GamesListViewController.swift
//  Achievement tracker
//
//  Created by Виталий Подшибякин on 21.03.2022.
//

import UIKit

class AchievementsListViewController: UITableViewController {
    
    var game: Game!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 70
        navigationItem.title = game.title

    
        
    }
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        game.achivements.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "achievementCell", for: indexPath)
        let achivements = game.achivements[indexPath.row]
        let gPoints = game.gPoints[indexPath.row]
        cell.textLabel?.text = achivements.description
        cell.imageView?.image = UIImage(named: achivements.description)
        cell.detailTextLabel?.text = gPoints.description

        return cell
        
    }
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let descriptionVC = segue.destination as? FullInfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let description = game.descriptions[indexPath.row]
        let gPoint = game.gPoints[indexPath.row]
        let achievement = game.achivements[indexPath.row]
        descriptionVC.info = description
        descriptionVC.gPoint = gPoint
        descriptionVC.achievement = achievement
    }

}
