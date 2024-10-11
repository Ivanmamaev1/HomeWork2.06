//
//  UserInformationViewController.swift
//  HomeWork2.06
//
//  Created by Ivan on 10.10.2024.
//

import UIKit

final class UserInformationViewController: UIViewController {
    
    @IBOutlet var photoView: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var professionLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoView.layer.cornerRadius = photoView.frame.height / 2
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        ageLabel.text = String(user.person.age)
        professionLabel.text = user.person.profession
        companyLabel.text = user.person.company
        setupGradientLayer()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let userBioVC = segue.destination as? AboutUserViewController
        userBioVC?.user = user
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
