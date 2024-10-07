//
//  ViewController.swift
//  HomeWork2.06
//
//  Created by Ivan on 05.10.2024.
//

import UIKit

final class LogInViewController: UIViewController {

    // MARK: IB Outlets
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    // MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 15
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        guard userNameTextField.text == "User",
              passwordTextField.text == "Password" else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.username = userNameTextField.text
    }
    
    // MARK: IB Actions
    @IBAction func showUserNameButton(_ sender: UIButton) {
        showAlert(withTitle: "Oops!", andMessage: "Your name is User😉")
    }
    
    @IBAction func showPasswordButton(_ sender: UIButton) {
        showAlert(withTitle: "Oops!", andMessage: "Your password is Password😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    // MARK: Private Methods
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .cancel)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
