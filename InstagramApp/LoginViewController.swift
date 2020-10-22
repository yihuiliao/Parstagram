//
//  LoginViewController.swift
//  InstagramApp
//
//  Created by Yihui Liao on 10/21/20.
//

import UIKit
import Parse

class LoginViewController: UIViewController {
    
    
    
    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func signIn(_ sender: Any) {
        
        let username = usernameField.text!
        let password = passwordField.text!
        
        PFUser.logInWithUsername(inBackground: username, password: password){(user, error) in
            if user != nil {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else {
                print("Error: \(error?.localizedDescription)")
            }
        }
    
    }

    
    @IBAction func signUp(_ sender: Any) {
        
        let user =  PFUser()
        
        user.username = usernameField.text
        user.password = passwordField.text
        
        user.signUpInBackground(){(success, error) in
            
            if success{
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else {
                print("Error: \(String(describing: error?.localizedDescription))")
            }
        }
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        createGradientLayer()
    }
    
    func createGradientLayer(){
        
        //if you want to change the colors (bc ngl it looks kinda ugly) you'll have
        //to mess with UIColors but I feel like moving on so yeahhhh
        
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = self.view.bounds
        
        gradientLayer.colors = [UIColor.purple.cgColor, UIColor.orange.cgColor, UIColor.yellow.cgColor]
        
        gradientLayer.locations = [0.0, 0.75, 0.98]
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        
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
