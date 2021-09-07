//
//  TrafficLightsView.swift
//  TrafficLightsX
//
//  Created by Julia Borovikova on 06.09.2021.
//

import UIKit
import SnapKit

class TrafficLightsView: UIView {
    
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
    }
    
    override func layoutSubviews() {
        redView.layer.cornerRadius = 50
        yellowView.layer.cornerRadius = 50
        greenView.layer.cornerRadius = 50
    }
}

