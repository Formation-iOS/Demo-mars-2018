//
//  Model.swift
//  TabbedApp
//
//  Created by Claire Reynaud on 20/03/2018.
//  Copyright © 2018 Claire Reynaud EIRL. All rights reserved.
//

import Foundation

class Model {
    
    var movies = Movie.movies()
    
    static let shared = Model()
    private init() {
    }
}
