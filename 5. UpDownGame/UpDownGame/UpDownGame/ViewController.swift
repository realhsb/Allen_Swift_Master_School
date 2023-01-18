//
//  ViewController.swift
//  UpDownGame
//
//  Created by 한수빈 on 2023/01/18.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    // 컴퓨터가 랜덤으로 숫자 생성
    var comNum: Int = Int.random(in:1...10)
    
//    var myNum: Int = 1
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // 1) 메인레이블에 "선택하세요"
        mainLabel.text = "선택하세요"
        
        // 2) 숫자 레이블은 "" (빈문자열)

        numberLabel.text = ""
    }
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        // 1) 버튼 숫자 가져오기
        guard let numString = sender.currentTitle else { return }
        
        // 2) 숫자 레이블이 변하도록 (숫자에 따라)
        numberLabel.text = numString
        
        // 3) 선택한 숫자를 변수에 저장 (선택사항) /  문자열 --> 숫자 변환 후 저장
//        guard let num = Int(numString) else { return }
//        myNum = num
        
    }
    
    @IBAction func selectButtonTapped(_ sender: Any) {
        
        // 또다른 방법 제시
        // 숫자레이블에 있는 문자열 가져오기 (옵셔널 벗기기)
        guard let myNumString = numberLabel.text else { return }
        
        // 타입 변환 (문자열 -> 정수)
        guard let myNum = Int(myNumString) else { return }
        
        
        
        
        // 1) 컴퓨터의 숫자와 내가 선택한 숫자를 비교 UP / DOWN / BINGO (메인레이블)
        if comNum > myNum {
            mainLabel.text = "UP"
        } else if comNum < myNum {
            mainLabel.text = "Down"
        } else {
            mainLabel.text = "Bingo😎"
        }
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 1) 메인레이블 "선택하세요"
        mainLabel.text = "선택하세요"
        
        // 2) 컴퓨터의 랜덤숫자를 다시 선택
        comNum = Int.random(in: 1...10)
        
        // 3) 숫자레이블은 "" (빈문자열)
        numberLabel.text = ""
    }
    
    
    
    
    


}

