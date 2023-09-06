//
//  ViewController.swift
//  libraryTry
//
//  Created by Furkan OGUZ on 6.09.2023.
//

import UIKit
import Skyview

final class ViewController: UIViewController {
    
    // MARK: - Properties
    
    private lazy var standartButton: StandartButton = {
        let button = StandartButton()
        button.setData(model: StandartButtonViewModel(title: "Start Test"))
        return button
    }()
    
    private lazy var loadingView: ProcessLoadingView = {
        let loadingView = ProcessLoadingView()
        return loadingView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewDidLayoutSubviews() {
        standartButton.setupUI()
    }
}

// MARK: - Private Methods

private extension ViewController {
    
    func setupUI() {
        addStandartButton()
        addLoadingView()
        loadingView.isHidden = true
        self.view.backgroundColor = .gray
    }
    
    func addStandartButton() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(buttonTapped))
        standartButton.addGestureRecognizer(tapGesture)
        view.addSubview(standartButton)
        standartButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().inset(16)
            make.height.equalTo(50)
        }
    }
    
    func addLoadingView() {
        view.addSubview(loadingView)
        loadingView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(standartButton.snp.bottom).offset(100)
            make.size.equalTo(100)
        }
    }
}

// MARK: - Actions

private extension ViewController {
    
    @objc func buttonTapped() {
        loadingView.startAnimating()
        loadingView.isHidden = false

        DispatchQueue.main.asyncAfter(deadline: .now() + 5) { [self] in
            loadingView.stopAnimating()
            loadingView.isHidden = true
        }
    }
}


