//
//  ViewController.swift
//  Emoji app
//
//  Created by Kenneth Sevelsted on 07/09/2018.
//  Copyright © 2018 Kenneth Sevelsted. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var emoji = ["🤵🏻","😱","👌🏻","🔔","👏🏻","😆","💰"]
    
    @IBOutlet weak var primetableviewr: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        primetableviewr.dataSource = self
        primetableviewr.delegate = self
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emoji.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = emoji[indexPath.row]
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

