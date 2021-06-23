//
//  SecondViewController.swift
//  Chen623
//
//  Created by 陳冠甫 on 2021/6/23.
//

import UIKit

class SecondViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var bigLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        
        bigLabel.layer.cornerRadius = 24
        bigLabel.layer.masksToBounds = true
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        var offset = scrollView.contentOffset.y / 250
        let changedColor = UIColor(red: 1, green: 1, blue: 1, alpha: offset)
        
        if offset > 1 {
            offset = 1
            navigationController?.navigationBar.backgroundColor = changedColor
            title = "Second Page"
            navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor(red: 0, green: 0, blue: 0, alpha: offset)]
            
            if #available(iOS 13.0, *) {
                let statusBar = UIView(frame: UIApplication.shared.keyWindow?.windowScene?.statusBarManager?.statusBarFrame ?? CGRect.zero)
                 statusBar.isHidden = true
                UIApplication.shared.keyWindow?.addSubview(statusBar)
                
            } else {
                 UIApplication.shared.statusBarView?.backgroundColor = changedColor
            }
            
        } else {
            navigationController?.navigationBar.backgroundColor = changedColor
            title = "Second Page"
            navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor(red: 0, green: 0, blue: 0, alpha: offset)]
            
            if #available(iOS 13.0, *) {
                let statusBar = UIView(frame: UIApplication.shared.keyWindow?.windowScene?.statusBarManager?.statusBarFrame ?? CGRect.zero)
                 statusBar.backgroundColor = changedColor
                UIApplication.shared.keyWindow?.addSubview(statusBar)
                
            } else {
                 UIApplication.shared.statusBarView?.backgroundColor = changedColor
            }
        }
    }
}
