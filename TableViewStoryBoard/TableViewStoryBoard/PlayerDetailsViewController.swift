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
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SavePlayerDetail",
            let playerName = nameTextField.text {
            player = PlayerModel(name: playerName, game: "Chess", rating: 1)
           }
    }
       
        
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
            if indexPath.section == 0 {
                nameTextField.becomeFirstResponder()
            }
    }
    
        

}


