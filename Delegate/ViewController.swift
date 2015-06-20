//
//  ViewController.swift
//  Delegate
//
//  Created by Florian Tonnelier on 20/06/2015.
//  Copyright © 2015 Florian Tonnelier. All rights reserved.
//

import UIKit

class ViewController: UIViewController,dataEnteredDelegate {

    @IBOutlet weak var dataLabel: UILabel! = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func userDidEntredInformation(info: NSString) {
        dataLabel.text = info.lastPathComponent
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "secondVC" {
            let secondVC:SecondTableViewControlerViewController = segue.destinationViewController as! SecondTableViewControlerViewController
            
            secondVC.delegate = self
            
        }
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

