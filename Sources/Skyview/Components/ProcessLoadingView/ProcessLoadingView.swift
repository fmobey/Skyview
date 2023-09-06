//
//  ProcessLoadingView.swift
//  
//
//  Created by Furkan OGUZ on 6.09.2023.
//

import UIKit
import SnapKit

@available(iOS 13.0, *)
public final class ProcessLoadingView: UIView {
    
    private let activityIndicatorView: UIActivityIndicatorView = {
        let indicator = UIActivityIndicatorView(style: .large)
        indicator.color = .white
        indicator.translatesAutoresizingMaskIntoConstraints = false
        return indicator
    }()
    
    public required init() {
        super.init(frame: .zero)
        setupUI()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
}

// MARK: Private Methods

@available(iOS 13.0, *)
private extension ProcessLoadingView {
    
    func setupUI() {
        backgroundColor = .clear
        addSubview(activityIndicatorView)
        activityIndicatorView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}

// MARK: Public Methods

@available(iOS 13.0, *)
public extension ProcessLoadingView {
    
    func startAnimating() {
        activityIndicatorView.startAnimating()
    }
    
    func stopAnimating() {
        activityIndicatorView.stopAnimating()
    }
}
