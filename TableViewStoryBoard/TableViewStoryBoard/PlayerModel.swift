//
//  PlayerModel.swift
//  TableViewStoryBoard
//
//  Created by Satabdi Das on 30/04/18.
//  Copyright © 2018 Satabdi Das. All rights reserved.
//

import UIKit

class PlayerModel: NSObject {

    var name:String
    var game:String
    var rating:Int
    
    init(name:String,game:String,rating:Int) {
        
        self.name = name
        self.game = game
        self.rating = rating
    }
}
