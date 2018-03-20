//
//  TableViewExtensions.swift
//  TabbedApp
//
//  Created by Claire Reynaud on 20/03/2018.
//  Copyright © 2018 Claire Reynaud EIRL. All rights reserved.
//

import UIKit

extension UITableView {
    
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        return dequeueReusableCell(withIdentifier: String(describing: T.self)) as! T
    }
}
