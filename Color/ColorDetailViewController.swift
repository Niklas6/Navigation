//
//  ColorDetailViewController.swift
//  Color
//
//  Created by Knobel, Niklas (MU-Student) on 4/2/19.
//  Copyright © 2019 Knobel, Niklas (MU-Student). All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {
    
    var color: Color?

    @IBOutlet weak var colorNameLabel: UILabel!
    override func viewDidLoad() {
        
        colorNameLabel.text = color?.name
        
        self.view.backgroundColor = color?.uiColor
        self.title = color?.name
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
