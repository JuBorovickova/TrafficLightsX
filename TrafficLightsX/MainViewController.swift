//
//  ViewController.swift
//  TrafficLightsX
//
//  Created by Julia Borovikova on 03.09.2021.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {

    private let traffidLightsView = TrafficLightsView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        view.addSubview(traffidLightsView)
        
        traffidLightsView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(25)
            $0.centerX.equalToSuperview()
        }

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.layoutIfNeeded()
        
    }
}

