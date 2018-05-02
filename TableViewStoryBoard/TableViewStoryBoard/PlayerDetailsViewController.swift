//
//  PlayerDetailsViewController.swift
//  TableViewStoryBoard
//
//  Created by Satabdi Das on 02/05/18.
//  Copyright © 2018 Satabdi Das. All rights reserved.
//

import UIKit

class PlayerDetailsViewController: UITableViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var detailLabel: UILabel!
    var player:PlayerModel?
    var game: String = "Chess" {
        didSet {
            detailLabel.text = game
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SavePlayerDetail",
            let playerName = nameTextField.text {
            player = PlayerModel(name: playerName, game: game, rating: 1)
           }
    }
       
        
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
            if indexPath.section == 0 {
                nameTextField.becomeFirstResponder()
            }
    }


}

extension PlayerDetailsViewController{
    
     @IBAction func saveGameDetail(_ segue: UIStoryboardSegue) {
        if let gamePickerViewController = segue.source as? GamePickerViewController,
            let selectedGame = gamePickerViewController.selectedGame {
            game = selectedGame
        }
    }
    
}


