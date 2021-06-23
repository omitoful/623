//
//  ViewController.swift
//  Chen623
//
//  Created by 陳冠甫 on 2021/6/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nextPageBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "陳冠甫(Guan-Fu Chen)"
        
        nextPageBtn.backgroundColor = .black
        nextPageBtn.layer.cornerRadius = 5
        nextPageBtn.tintColor = .white
        
    }


}

