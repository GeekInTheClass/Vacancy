//
//  MainUIViewController.swift
//  Vacancy
//
//  Created by Segaon_PC on 2017. 12. 4..
//  Copyright © 2017년 Sungwook Ahn. All rights reserved.
//

import UIKit

class MainUIViewController: UIViewController {
    
    //var mainView:MainView_New

    
    @IBOutlet weak var goList: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        goList.layer.cornerRadius = 5
        goList.clipsToBounds = true

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
