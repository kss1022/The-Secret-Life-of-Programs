//
//  MainViewController.swift
//  DrawingAlgorithm
//
//  Created by 한현규 on 2/13/24.
//

import UIKit

class MainViewController: UIViewController {
    
    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 32.0
        return stackView
    }()
    
    private func button(_ title: String) -> UIButton{
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setLayout()
    }

    
    private func setLayout(){
        view.backgroundColor = .systemBackground
        
        view.addSubview(scrollView)
        scrollView.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
        ])
        
        
        let grideButton = button("Gride")
        grideButton.addTarget(self, action: #selector(grideButtonTap), for: .touchUpInside)
        
        let lineButton = button("Line")
        lineButton.addTarget(self, action: #selector(lineButtonTap), for: .touchUpInside)
        
        let gradientButton = button("Gradient")
        gradientButton.addTarget(self, action: #selector(gradientButtonTap), for: .touchUpInside)
        
        let arcButton = button("Arc")
        arcButton.addTarget(self, action: #selector(arcButtonTap), for: .touchUpInside)
        
        let spiralButton = button("Spiral")
        spiralButton.addTarget(self, action: #selector(spiralButtonTap), for: .touchUpInside)
        
        stackView.addArrangedSubview(grideButton)
        stackView.addArrangedSubview(lineButton)
        stackView.addArrangedSubview(gradientButton)
        stackView.addArrangedSubview(arcButton)
        stackView.addArrangedSubview(spiralButton)
    }
    
    
    @objc
    private func grideButtonTap(){
        let vc = GrideViewController()
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        present(nav, animated: true)
    }

    
    @objc
    private func lineButtonTap(){
        let vc = LineViewController()
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        present(nav, animated: true)
    }
    
    @objc
    private func gradientButtonTap(){
        let vc = GradientViewController()
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        present(nav, animated: true)
    }
    
    @objc
    private func arcButtonTap(){
        let vc = ArcViewController()
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        present(nav, animated: true)
    }
    
    @objc
    private func spiralButtonTap(){
        let vc = SpiralViewController()
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        present(nav, animated: true)
    }
}

