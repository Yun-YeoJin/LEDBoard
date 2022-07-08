
import UIKit
import CoreLocation


class LEDBoardViewController: UIViewController, UIGestureRecognizerDelegate {

    //IBOutlet과 IBAction의 차이점
    //아웃렛은 눈에 보일때 이쁘게 보이는 디자인 면은 아웃렛
    //액션은 버튼의 타이틀 같은 건 못바꿈
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var someView: UIView!
    
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var textColorButton: UIButton!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet var buttonList: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.numberOfLines = 0
        
        designTextField()
        designButton(sendButton, buttonTitle: "전송", highLightedTitle: "완료", buttonBackGroundColor: .yellow)
        designButton(textColorButton, buttonTitle: "텍스트변경", highLightedTitle: "변경중", buttonBackGroundColor: .yellow)
        
    
//studyOutletCollection()

userTextField.delegate = self
        
//        let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer()
//        tapGesture.delegate = self
//
//        self.view.addGestureRecognizer(tapGesture)

    }
    

    func designTextField() {
        userTextField.placeholder = "내용을 작성해주세요."
        userTextField.text = "안녕하세요"
        userTextField.keyboardType = .emailAddress

    }
    
    func designButton(_ buttonName: UIButton, buttonTitle: String, highLightedTitle: String, buttonBackGroundColor bgColor: UIColor) {
        buttonName.setTitle(buttonTitle,for: .normal)
        buttonName.setTitle(highLightedTitle, for: .highlighted)
        buttonName.backgroundColor = bgColor
        buttonName.layer.cornerRadius = 8
        buttonName.layer.borderColor = UIColor.lightGray.cgColor
        buttonName.layer.borderWidth = 3
        buttonName.setTitleColor(.red, for: .normal)
        buttonName.setTitleColor(.orange, for: .highlighted)
    }
        
//    func studyOutletCollection() {
//
//        // 1. 반복문
//        let buttonArray: [UIButton] = [sendButton, textColorButton]
//
//        for item in buttonArray {
//            item.backgroundColor = .blue
//            item.layer.cornerRadius = 2
//        }
//
//        // 2. 아웃렛 컬렉션 (buttonList라는 Outlet Collection 생성)
//        for item in buttonList {
//            item.backgroundColor = .blue
//            item.layer.cornerRadius = 2
//        }
//    }

    @IBAction func sendButtonClicked(_ sender: UIButton) {
     
        mainLabel.text = userTextField.text
        mainLabel.textColor = .red
        mainLabel.font = .boldSystemFont(ofSize: 40)
    }
    
    
    // _ sender: Any로 하면 탭제스쳐, UIButton 연결가능
    @IBAction func exButton(_ sender: UIButton) {
        view.endEditing(true)
    }
    @IBAction func TextFieldActionExample(_ sender: UITextField) {
        view.endEditing(true)
    }
    
    // View 화면 바꿔주기 !!
    
    @IBAction func showAndHideView(_ sender: UITapGestureRecognizer) {
        
        if someView.isHidden {
            someView.isHidden = false
        } else {
            someView.isHidden = true
        }
    }
    @IBAction func showAndHideView2(_ sender: UITapGestureRecognizer) {
        if someView.isHidden {
            someView.isHidden = false
        } else {
            someView.isHidden = true
        }
    
    }
    
}

    extension LEDBoardViewController: UITextFieldDelegate {

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        userTextField.resignFirstResponder() // TextField 비활성화
        return true
    }
}
