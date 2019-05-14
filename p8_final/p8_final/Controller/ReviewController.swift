//
//  ReviewController.swift
//  p8_final
//
//  Created by Jonathan on 5/14/19.
//  Copyright © 2019 Jonathan. All rights reserved.
//

import UIKit
import MapKit

class ReviewController: UIViewController, UITextFieldDelegate{
    
    
    var window: UIWindow?
    var mapView: MKMapView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let leftMargin:CGFloat = 10
        let topMargin:CGFloat = 60
        let fieldWidth:CGFloat = view.frame.size.width - 20
        let fieldHeight:CGFloat = 50
        
        
        

        
        var textField2 = UITextField(frame: CGRect(x: leftMargin, y: topMargin, width: fieldWidth, height: fieldHeight))
        textField2.backgroundColor = .lightGray
        textField2.center = view.center 
        textField2.text = "Write your review here!"
        
        
        
        
        
       
        self.view.addSubview(textField2)
        //self.view.addSubview(button)
    
        
        
        configureUI()
    }
    
    
    @objc func handleDismiss(){
        dismiss(animated: true, completion: nil)
    }
    
    
    func configureUI(){
        view.backgroundColor = .white
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Review"
        navigationController?.navigationBar.barStyle = .black
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "close_icon").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleDismiss))
        
        
    }
    
    
    
    
}
