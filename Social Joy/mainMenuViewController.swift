//
//  mainMenuViewController.swift
//  Social Joy
//
//  Created by Cohen, Trevor (Genworth) on 5/1/18.
//  Copyright © 2018 Cohen, Trevor (Genworth). All rights reserved.
//

import UIKit

class mainMenuViewController: UIViewController {

    @IBOutlet weak var startQuizButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var aQuiz = Quiz()
        aQuiz.buildQuestions()
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
