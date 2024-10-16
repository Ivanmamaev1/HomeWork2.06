//
//  AboutUserViewController.swift
//  HomeWork2.06
//
//  Created by Ivan on 10.10.2024.
//

import UIKit

final class AboutUserViewController: UIViewController {
    
    @IBOutlet var userBioTextView: UITextView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userBioTextView.text = user.person.bio
        setupGradientLayer()
    }
    
    private func setupGradientLayer() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.systemPink.cgColor, UIColor.systemCyan.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
