//
//  ViewController.swift
//  TrafficLightsX
//
//  Created by Julia Borovikova on 03.09.2021.
//

import UIKit
import SnapKit
import RxCocoa

class MainViewController: UIViewController {

    private let traffidLightsView = TrafficLightsView()
    
    private let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        button.backgroundColor = .orange
        button.layer.cornerRadius = 8
        button.setTitle("Нажми же кнопку", for: .normal)
        
        view.addSubview(traffidLightsView)
        view.addSubview(button)
        
        traffidLightsView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(25)
            $0.centerX.equalToSuperview()
        }
        
        button.snp.makeConstraints {
            $0.bottom.equalToSuperview().offset(-25)
            $0.height.equalTo(56)
            $0.width.equalTo(200)
            $0.centerX.equalToSuperview()
        }
        
        _ = button.rx.tap.subscribe { _ in
            self.traffidLightsView.toggle()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.layoutIfNeeded()
    }
}

