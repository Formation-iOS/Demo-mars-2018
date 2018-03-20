//
//  MovieDetailViewController.swift
//  TabbedApp
//
//  Created by Claire Reynaud on 19/03/2018.
//  Copyright © 2018 Claire Reynaud EIRL. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = movie?.title
    }
}
