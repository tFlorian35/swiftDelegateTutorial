//
//  SecondTableViewControlerViewController.swift
//  Delegate
//
//  Created by Florian Tonnelier on 20/06/2015.
//  Copyright © 2015 Florian Tonnelier. All rights reserved.
//

import UIKit

protocol dataEnteredDelegate {
    func userDidEntredInformation(info : NSString)
}

class SecondTableViewControlerViewController: UIViewController {
    
    @IBOutlet weak var dataTextField: UITextField! = UITextField()
    
    
    var delegate : dataEnteredDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func sendData(sender: AnyObject) {
        if delegate != nil {
            let information : NSString = dataTextField.text!
            
            delegate!.userDidEntredInformation(information)
            self.navigationController?.popViewControllerAnimated(true)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
