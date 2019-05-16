//
//  ViewController.swift
//  MInhas_Anotacoes
//
//  Created by Max Mendes on 16/05/19.
//  Copyright © 2019 Curso iOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let textKey:String = "userText"
    @IBOutlet weak var textArea: UITextView!
    @IBAction func btnSave(_ sender: Any) {
        if let text = textArea.text{
            UserDefaults.standard.set(text, forKey: textKey)
            view.endEditing(true)
        }
        
    }
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func loadText() -> String{
        if let textLoaded = UserDefaults.standard.object(forKey: textKey){
            return textLoaded as! String
        }
        
        return ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textArea.text = loadText()
        print(textArea)
    }


}

