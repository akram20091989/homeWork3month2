//
//  ViewController.swift
//  homeWork3month2
//
//  Created by bond on 17/5/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordUnderLine: UIView!
    
    @IBOutlet weak var emailUnderLine: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func eyePressed(_ sender: UIButton) {
        if passwordTextField.isSecureTextEntry == true{
            passwordTextField.isSecureTextEntry = false
            sender.setImage(UIImage(systemName:"eye.fill"), for: .normal)
        }else{ sender.setImage(UIImage(systemName:"eye.slash.fill"), for: .normal)
            passwordTextField.isSecureTextEntry = true
        }
    }
    
    @IBAction func rememberButton(_ sender: UIButton) {
        if sender.imageView?.image == UIImage(systemName: "square"){
            sender.setImage(UIImage.init(systemName: "checkmark.square"), for: .normal)
        }else{
            sender.setImage(UIImage.init(systemName: "square"), for: .normal)
        }
    }
    
    @IBAction func signInTapped(_ sender: UIButton) {
        let email = checkForEmpty(tf: EmailTextField, line: emailUnderLine)
        let password = checkForEmpty(tf: passwordTextField, line: passwordUnderLine)
        if email && password{
            performSegue(withIdentifier: "goToSucsessVc", sender: self)
        }
        
    }
    private func checkForEmpty(tf:UITextField,line:UIView) -> Bool{
        if tf.text == ""{
            line.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
            return false
        }else{
            line.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            return true
        }
    }
}

