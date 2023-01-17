//
//  ViewController.swift
//  MyFirstApp
//
//  Created by 한수빈 on 2023/01/17.
//

import UIKit

class ViewController: UIViewController {
    // IB : Interface Builder
    
    // Outlet : 배출구 / 코드 상의 설정 -> 스토리보드로 전달
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var myButton: UIButton!
    
    // 앱의 화면에 들어오면 처음 실행시키는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Action / 스토리보드 상의 액션 -> 코드로 전달
    @IBAction func buttonPressed(_ sender: UIButton) {
        // Touch Up Inside : 버튼을 눌러서, 내부에서 뗐을 때
        
        // #colorLiteral()
        mainLabel.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        //mainLabel.backgroundColor = UIColor.yellow
        
        mainLabel.text = "안녕하세요"
        mainLabel.textColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        mainLabel.textAlignment = NSTextAlignment.center
        myButton.setTitleColor(UIColor.black, for:UIControl.State.normal)
    }
    
}

