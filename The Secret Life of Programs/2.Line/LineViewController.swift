//
//  LineViewController.swift
//  DrawingAlgorithm
//
//  Created by 한현규 on 2/13/24.
//

import UIKit



final class LineViewController: UIViewController{

    private lazy var backBarButtonItem: UIBarButtonItem = {
        let barbutton = UIBarButtonItem(
            barButtonSystemItem: .close,
            target: self,
            action: #selector(backButtonDidTap)
        )
        return barbutton
    }()
    
    private let lineView: UIView = {
        let lineView = LineView()
        return lineView
    }()
    
    override func viewDidLoad() {
        setLayout()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        lineView.frame = view.frame
    }
    

    
    private func setLayout(){
        title = "Line"
        view.backgroundColor = .systemBackground
        
        navigationItem.rightBarButtonItem = backBarButtonItem
        
        view.addSubview(lineView)
    }
    
  
    
    @objc
    private func backButtonDidTap(){
        dismiss(animated: true)
    }
    
}
