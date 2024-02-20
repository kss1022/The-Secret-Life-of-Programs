//
//  GradientViewController.swift
//  DrawingAlgorithm
//
//  Created by 한현규 on 2/14/24.
//

import UIKit



final class GradientViewController: UIViewController{
    private lazy var backBarButtonItem: UIBarButtonItem = {
        let barbutton = UIBarButtonItem(
            barButtonSystemItem: .close,
            target: self,
            action: #selector(backButtonDidTap)
        )
        return barbutton
    }()
    
    private let gradientView: UIView = {
        let gradientView = GradientView()
        return gradientView
    }()
    
    override func viewDidLoad() {
        setLayout()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        gradientView.frame = view.frame
    }
    
    
    private func setLayout(){
        title = "Gride"
        view.backgroundColor = .systemBackground
        
        navigationItem.rightBarButtonItem = backBarButtonItem
        
        view.addSubview(gradientView)
    }
    
 
    
    @objc
    private func backButtonDidTap(){
        dismiss(animated: true)
    }
    

}
