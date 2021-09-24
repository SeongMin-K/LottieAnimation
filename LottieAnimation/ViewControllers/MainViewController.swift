//
//  ViewController.swift
//  LottieAnimation
//
//  Created by SeongMinK on 2021/09/24.
//

import UIKit
import Lottie

class MainViewController: UIViewController {

    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "메인 화면"
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 70)
        return label
    }()
    
    let animationView: AnimationView = {
        let aniView = AnimationView(name: "find-something")
        aniView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        aniView.contentMode = .scaleAspectFill
        return aniView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .black
        
        view.addSubview(animationView)
        animationView.center = view.center
        
        // 애니메이션 실행
        animationView.play {(finish) in
            print("애니메이션이 끝남")
            
            self.view.backgroundColor = .white
            self.animationView.removeFromSuperview()
            
            self.view.addSubview(self.titleLabel)
            self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
            self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        }
    }


}
