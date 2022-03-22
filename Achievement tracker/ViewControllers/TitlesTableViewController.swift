//
//  TitlesTableViewController.swift
//  Achievement tracker
//
//  Created by Виталий Подшибякин on 21.03.2022.
//

import UIKit

class TitlesTableViewController: UITableViewController {
    
    let games = Game.getGames()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 180
        navigationItem.title = "Achievement tracker"
        
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        games.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GameCell", for: indexPath)
        let game = games[indexPath.row]
        cell.imageView?.image = UIImage(named: game.title)
        cell.textLabel?.text = game.title
        return cell
    }
    

    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = self.tableView.indexPathForSelectedRow {
            let gamesListVC = segue.destination as! AchievementsListViewController
            gamesListVC.game = games[indexPath.row]
        }
        
    }
    
}
