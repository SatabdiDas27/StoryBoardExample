//
//  GamePickerViewController.swift
//  TableViewStoryBoard
//
//  Created by Satabdi Das on 02/05/18.
//  Copyright © 2018 Satabdi Das. All rights reserved.
//

import UIKit

class GamePickerViewController: UITableViewController {

    let gameViewModelObj = GamePickerViewModel()
    var selectedGame: String?
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.gameViewModelObj.getGameInfo {
            self.tableView.reloadData()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.gameViewModelObj.arrayForGameInfo.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GameCell", for: indexPath)
        let gameModel  = self.gameViewModelObj.arrayForGameInfo[indexPath.row]
        cell.textLabel?.text = gameModel.game
        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cellForHeader = tableView.dequeueReusableCell(withIdentifier: "HeaderViewCell")
        return cellForHeader?.contentView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40.0
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "SaveGameDetails",
            let cell = sender as? UITableViewCell,
            let indexPath = tableView.indexPath(for: cell) else {
            return
        }
        
        let index = indexPath.row
        let gameModel  = self.gameViewModelObj.arrayForGameInfo[index]
        selectedGame = gameModel.game
    }
    
}


