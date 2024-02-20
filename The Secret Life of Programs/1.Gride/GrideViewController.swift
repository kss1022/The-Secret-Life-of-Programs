//
//  GrideViewController.swift
//  DrawingAlgorithm
//
//  Created by 한현규 on 2/13/24.
//

import UIKit



final class GrideViewController: UIViewController{
    

    private lazy var backBarButtonItem: UIBarButtonItem = {
        let barbutton = UIBarButtonItem(
            barButtonSystemItem: .close,
            target: self,
            action: #selector(backButtonDidTap)
        )
        return barbutton
    }()
    
    private let gridView: UIView = {
        let gridView = GrideView()
        return gridView
    }()
    
    override func viewDidLoad() {
        setLayout()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        gridView.frame = view.frame
    }
    
    
    private func setLayout(){
        title = "Gride"
        view.backgroundColor = .systemBackground
        
        navigationItem.rightBarButtonItem = backBarButtonItem
        
        view.addSubview(gridView)
    }
    
 
    
    @objc
    private func backButtonDidTap(){
        dismiss(animated: true)
    }
    
}
