//
//  ViewController.swift
//  Lesson 24 Homework
//
//  Created by Rsllwstbrk on 24.12.23.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    private var webView = WKWebView()
    var addressTextField = UITextField()
    var forwardButton = UIButton()
    var backwardButton = UIButton()
    var reloadButton = UIButton()
    
    @objc func buttonReloadPressed (_ sender: Any) {
        webView.reload()
    }
    
    @objc func buttonForwardPressed (_ sender: Any) {
        webView.goForward()
    }
    
    @objc func buttonBackwardPressed (_ sender: Any) {
        webView.goBack()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = URL(string: "https://google.com") else { return }
        

        self.view.addSubview(webView)
        webView.translatesAutoresizingMaskIntoConstraints = false
        webView.load(URLRequest(url: url))
        NSLayoutConstraint.activate([
            webView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            webView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            webView.widthAnchor.constraint(equalTo: self.view.widthAnchor),
            webView.heightAnchor.constraint(equalToConstant: 700)
        ])
        
        
        
        
        
        self.view.addSubview(reloadButton)
        reloadButton.translatesAutoresizingMaskIntoConstraints = false
        reloadButton.setBackgroundImage(UIImage(systemName: "arrow.clockwise.circle.fill"), for: .normal)
        reloadButton.tintColor = .darkGray
        reloadButton.addTarget(self, action: #selector(buttonReloadPressed), for: .touchUpInside)
        NSLayoutConstraint.activate([
            reloadButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            reloadButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 400),
            reloadButton.widthAnchor.constraint(equalToConstant: 40),
            reloadButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        
        
        self.view.addSubview(forwardButton)
        forwardButton.translatesAutoresizingMaskIntoConstraints = false
        forwardButton.setBackgroundImage(UIImage(systemName: "arrow.forward.circle.fill"), for: .normal)
        forwardButton.tintColor = .darkGray
        forwardButton.addTarget(self, action: #selector(buttonForwardPressed), for: .touchUpInside)
        NSLayoutConstraint.activate([
            forwardButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 170),
            forwardButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 400),
            forwardButton.widthAnchor.constraint(equalToConstant: 40),
            forwardButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        
        
        self.view.addSubview(backwardButton)
        backwardButton.translatesAutoresizingMaskIntoConstraints = false
        backwardButton.setBackgroundImage(UIImage(systemName: "arrow.backward.circle.fill"), for: .normal)
        backwardButton.tintColor = .darkGray
        backwardButton.addTarget(self, action: #selector(buttonBackwardPressed), for: .touchUpInside)
        NSLayoutConstraint.activate([
            backwardButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: -170),
            backwardButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 400),
            backwardButton.widthAnchor.constraint(equalToConstant: 40),
            backwardButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        
        self.view.addSubview(addressTextField)
        addressTextField.translatesAutoresizingMaskIntoConstraints = false
        addressTextField.borderStyle = .roundedRect
        addressTextField.layer.borderWidth = 1.0
        addressTextField.layer.borderColor = UIColor.darkGray.cgColor
        addressTextField.layer.cornerRadius = 9.0
        addressTextField.placeholder = "Web-search or URL"
        addressTextField.text = "\(url)"
        NSLayoutConstraint.activate([
            addressTextField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: -30),
            addressTextField.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -380),
            addressTextField.widthAnchor.constraint(equalToConstant: 330),
            addressTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        
    }


}

