//
//  LoginViewController.swift
//  InstagramApp
//
//  Created by Yihui Liao on 10/21/20.
//

import UIKit

class LoginViewController: UIViewController {

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
        
        gradientLayer.colors = [UIColor.purple.cgColor, UIColor.yellow.cgColor]
        
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
