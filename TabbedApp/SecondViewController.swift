//
//  SecondViewController.swift
//  TabbedApp
//
//  Created by Claire Reynaud on 19/03/2018.
//  Copyright © 2018 Claire Reynaud EIRL. All rights reserved.
//

import UIKit

class SecondViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "MyOtherCell", for: indexPath)
    }
}

