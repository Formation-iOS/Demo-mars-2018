//
//  FirstViewController.swift
//  TabbedApp
//
//  Created by Claire Reynaud on 19/03/2018.
//  Copyright © 2018 Claire Reynaud EIRL. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        title = "Liste de films"
        
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension FirstViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movieCell: MovieCell = tableView.dequeueReusableCell()
        let movie = Model.shared.movies[indexPath.row]
        movieCell.movie = movie
        return movieCell
        /* if let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieCell {
            let movie = movies[indexPath.row]
            cell.movie = movie
            return cell
        }
        return UITableViewCell() */
    }
}

extension FirstViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let detailStoryboard = UIStoryboard(name: "Detail", bundle: nil)
        if let movieDetailVC = detailStoryboard.instantiateViewController(withIdentifier: "MovieDetail") as? DetailViewController {
            movieDetailVC.movie = Model.shared.movies[indexPath.row]
            navigationController?.pushViewController(movieDetailVC, animated: true)
        }
    }
}

