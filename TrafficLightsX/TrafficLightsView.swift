//
//  TrafficLightsView.swift
//  TrafficLightsX
//
//  Created by Julia Borovikova on 06.09.2021.
//

import UIKit
import SnapKit

class TrafficLightsView: UIView {

    enum State {
        case red
        case yellow
        case green
    }
    
    private var state: State = .red
    
    private let redView = UIView()
    private let yellowView = UIView()
    private let greenView = UIView()
    
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
        addSubview(redView)
        addSubview(yellowView)
        addSubview(greenView)
        
        redView.backgroundColor = .red
        yellowView.backgroundColor = .yellow
        greenView.backgroundColor = .green
        
        redView.snp.makeConstraints {
            $0.size.equalTo(100)
            $0.right.left.top.equalToSuperview()
        }
        
        yellowView.snp.makeConstraints {
            $0.size.equalTo(100)
            $0.right.left.equalToSuperview()
            $0.top.equalTo(redView.snp.bottom).offset(10)
        }
        
        greenView.snp.makeConstraints {
            $0.size.equalTo(100)
            $0.right.left.equalToSuperview()
            $0.top.equalTo(yellowView.snp.bottom).offset(10)
        }
        updateStateUI()
    }
    
    override func layoutSubviews() {
        redView.layer.cornerRadius = 50
        yellowView.layer.cornerRadius = 50
        greenView.layer.cornerRadius = 50
    }
    
    private func updateStateUI() {
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        switch state {
        case .red:
            redView.alpha = 1
        case .yellow:
            yellowView.alpha = 1
        case .green:
            greenView.alpha = 1
        }
    }
    
    func toggle() {
        switch state {
        case .red:
            state = .yellow
        case .yellow:
            state = .green
        case .green:
            state = .red
        }
        updateStateUI()
    }
}


