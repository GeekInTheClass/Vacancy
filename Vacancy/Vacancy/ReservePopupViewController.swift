//
//  ReservePopupViewController.swift
//  Vacancy
//
//  Created by Segaon_PC on 2017. 11. 20..
//  Copyright © 2017년 Sungwook Ahn. All rights reserved.
//

import UIKit



class ReservePopupViewController: UIViewController {
    
    var takeStore:Store? = nil
    
    @IBOutlet weak var storeName: UILabel!
    
    @IBOutlet weak var goReserve: UIButton!
    
    override func viewDidLoad() {
        

        let circle = UIView(frame: CGRect(x: 200.0, y:300.0, width: 50, height: 50))
        
        circle.center = self.view.center
        circle.layer.cornerRadius = 50
        circle.backgroundColor = UIColor.green
        circle.clipsToBounds = true
        
        storeName.text = takeStore?.name
        
        
        
        goReserve.layer.cornerRadius = 5
        goReserve.clipsToBounds = true
        
        
        
        
        
    
        
        
        
        
        super.viewDidLoad()

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
