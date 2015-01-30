//
//  SecondViewController.swift
//  ToDo
//
//  Created by John Dickinson on 1/16/15.
//  Copyright (c) 2015 umsi363w15. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textTask: UITextField!
    
    @IBOutlet weak var textDesc: UITextField!
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    @IBAction func buttonAddTask(sender: UIButton) {
        taskMgr.addTask(textTask.text, desc: textDesc.text)
        
        self.view.endEditing(true)
        textTask.text = ""
        textDesc.text = ""
        self.tabBarController?.selectedIndex = 0
    }


}

