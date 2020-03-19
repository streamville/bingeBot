//
//  ViewController.swift
//  BingeBot
//
//  Created by Duong Nguyen on 2020-03-18.
//  Copyright © 2020 Streamville Studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showsLabel: UILabel!
    
    @IBOutlet weak var randomShowLbl: UILabel!
    
    @IBOutlet weak var bingeBotLbl: UILabel!
    
    @IBOutlet weak var addShowInput: UITextField!
    
    @IBOutlet weak var addShowBtn: UIButton!
    
    @IBOutlet weak var randomShowStackView: UIStackView!
    
    @IBOutlet weak var addShowStackView: UIStackView!
    
    @IBOutlet weak var showStackView: UIStackView!
    
    var shows: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        showStackView.isHidden = true
        randomShowStackView.isHidden = true
    }
    
    func updateShowLabel(){
        showsLabel.text = shows.joined(separator: ", ")
    }
    
    @IBAction func bingeShowBtnPressed(_ sender: Any) {
        randomShowLbl.text = shows.randomElement()
        randomShowLbl.isHidden = false
        bingeBotLbl.isHidden = false 
    }
    
    
    
    
    @IBAction func addShowBtnPressed(_ sender: Any) {
        guard let showName = addShowInput.text else {return}
        shows.append(showName)
        updateShowLabel()
        addShowInput.text = ""
        showStackView.isHidden = false
        
        if shows.count > 1{
            randomShowStackView.isHidden = false
            bingeBotLbl.isHidden = true
            randomShowLbl.isHidden = true
        }
    }
    
    
    


}

