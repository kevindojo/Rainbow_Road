//
//  ViewController.swift
//  RainbowRoad
//
//  Created by Kevin Pham on 11/6/17.
//  Copyright © 2017 Kevin Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    let colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]

    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return colors.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        cell.backgroundColor = colors[indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}




