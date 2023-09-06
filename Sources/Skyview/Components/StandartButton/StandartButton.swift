//
//  StandartButton.swift
//  
//
//  Created by Furkan OGUZ on 6.09.2023.
//

import UIKit
import SnapKit

public final class StandartButton: UIButton {
    
    public required init() {
        super.init(frame: .null)
        setupUI()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    public func setupUI() {
        setupViews()
    }
    
    public func setData(model: StandartButtonViewModel) {
        self.setTitle(model.title, for: .normal)
    }
}

// MARK: - Private Methods

 extension StandartButton {
    
    func setupViews() {
        self.applyGradient(colours: [UIColor.blue, UIColor.purple],
                           locations: [0, 1],
                           cornerRadius: 16,
                           size: CGRect(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height))
        self.setTitleColor(.white, for: .normal)
        self.titleLabel?.textAlignment = .center
    }
}
