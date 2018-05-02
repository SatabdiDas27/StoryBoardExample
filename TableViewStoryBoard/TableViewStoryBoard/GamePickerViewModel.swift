//
//  GamePickerViewModel.swift
//  TableViewStoryBoard
//
//  Created by Satabdi Das on 02/05/18.
//  Copyright © 2018 Satabdi Das. All rights reserved.
//

import UIKit

class GamePickerViewModel: NSObject {

    var arrayForGameInfo = [GamePickerModel]()
    func getGameInfo(completion: @escaping() -> Void) {
        if self.arrayForGameInfo.count == 0 {
            self.arrayForGameInfo.append(GamePickerModel(game: "Angry Birds"))
            self.arrayForGameInfo.append(GamePickerModel(game:"Chess"))
            self.arrayForGameInfo.append(GamePickerModel(game:"Russian Roulette"))
            self.arrayForGameInfo.append(GamePickerModel(game:"Spin the Bottle"))
            self.arrayForGameInfo.append(GamePickerModel(game:"Texas Hold'em Poker"))
            self.arrayForGameInfo.append(GamePickerModel(game:"Tic-Tac-Toe"))
        }
        completion()
    }
}
