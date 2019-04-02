//
//  ColorViewController.swift
//  Color
//
//  Created by Knobel, Niklas (MU-Student) on 3/5/19.
//  Copyright © 2019 Knobel, Niklas (MU-Student). All rights reserved.
//

import UIKit

class ColorViewController: UIViewController, UITabBarDelegate, UITableViewDataSource {
    
    var colors2 = [Color(name:"red", uiColor: UIColor.red),
                   Color(name:"orange", uiColor: UIColor.orange),
                   Color(name:"yellow", uiColor: UIColor.yellow),
                   Color(name:"green", uiColor: UIColor.green),
                   Color(name:"blue", uiColor: UIColor.blue),
                   Color(name:"purple", uiColor: UIColor.purple),
                   Color(name:"brown", uiColor: UIColor.brown)]
    
    var colors = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
    var Col = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple, UIColor.brown]

    
    @IBOutlet weak var colorsTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        cell.textLabel?.text = colors[indexPath.row]
        cell.backgroundColor =  Col[indexPath.row]
        cell.selectionStyle = .none
        
        return cell
        
    }
    
    //func tableView(_ tableView: UITableView, didSlectRowAt indexPath: IndexPath) {
    //    tableView.cellForRow(at: indexPath)?.isSelected = false
    //}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  let destination = segue.destination as? ColorDetailViewController,
            let row = colorsTableView.indexPathForSelectedRow?.row {
            destination.color = colors2[row]
            }
    }

}
