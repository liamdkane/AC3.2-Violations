//
//  DetailViewController.swift
//  AC3.2-Violations
//
//  Created by C4Q on 10/16/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var violation: Violation?

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var grade: UILabel!
    @IBOutlet weak var boro: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.name.text = violation?.dba
        self.boro.text = violation?.boro
        self.grade.text = violation?.score
        self.descriptionLabel.text = violation?.description
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
