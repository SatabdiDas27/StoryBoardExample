//
//  PlayerViewModel.swift
//  TableViewStoryBoard
//
//  Created by Satabdi Das on 30/04/18.
//  Copyright © 2018 Satabdi Das. All rights reserved.
//

import UIKit

class PlayerViewModel: NSObject {

    var arrayForPlayerInfo = [PlayerModel]()
    func generatePlayersData(completion: @escaping() -> Void) {
        
           self.arrayForPlayerInfo.append(PlayerModel(name: "Bill Evans", game: "Tic-Tac-Toe", rating: 4))
           self.arrayForPlayerInfo.append(PlayerModel(name: "Oscar Peterson", game: "Spin the Bottle", rating: 5))
           self.arrayForPlayerInfo.append(PlayerModel(name: "Dave Brubeck", game: "Texas Hold 'em Poker", rating: 2))
           completion()
    }
}
