//
//  SpiralViewController.swift
//  DrawingAlgorithm
//
//  Created by 한현규 on 2/14/24.
//

import UIKit



final class SpiralViewController: UIViewController{
    
    private lazy var backBarButtonItem: UIBarButtonItem = {
        let barbutton = UIBarButtonItem(
            barButtonSystemItem: .close,
            target: self,
            action: #selector(backButtonDidTap)
        )
        return barbutton
    }()
    
    private let spiralView: UIView = {
        let spiralView = SpiralView()
        return spiralView
    }()
    
    override func viewDidLoad() {
        setLayout()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        spiralView.frame = view.frame
    }
    
    
    private func setLayout(){
        title = "Spiral"
        view.backgroundColor = .systemBackground
        
        navigationItem.rightBarButtonItem = backBarButtonItem
        
        view.addSubview(spiralView)
    }
    
 
    
    @objc
    private func backButtonDidTap(){
        dismiss(animated: true)
    }
    

}

