//
//  Button.swift
//  TrafficLightsX
//
//  Created by Julia Borovikova on 11.09.2021.
//

import Foundation
import UIKit

class Button: UIButton {
    
    public init() {
        super.init(frame: .zero)
        createUI()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        createUI()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func createUI() {
        backgroundColor = .blue
        setTitle("получишь результат", for: .normal)
        layer.cornerRadius = 25
    }
}

