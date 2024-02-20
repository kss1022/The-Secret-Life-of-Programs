//
//  ArcViewController.swift
//  DrawingAlgorithm
//
//  Created by 한현규 on 2/14/24.
//

import UIKit


final class ArcViewController: UIViewController{
    
    private lazy var backBarButtonItem: UIBarButtonItem = {
        let barbutton = UIBarButtonItem(
            barButtonSystemItem: .close,
            target: self,
            action: #selector(backButtonDidTap)
        )
        return barbutton
    }()
    
    private let arcView: UIView = {
        let arcView = ArcView()
        return arcView
    }()
    
    override func viewDidLoad() {
        setLayout()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        arcView.frame = view.frame
    }
    
    
    private func setLayout(){
        title = "Arc"
        view.backgroundColor = .systemBackground
        
        navigationItem.rightBarButtonItem = backBarButtonItem
        
        view.addSubview(arcView)
    }
    
 
    
    @objc
    private func backButtonDidTap(){
        dismiss(animated: true)
    }
    

}

