

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    // 런치 스크린이 실행될 때 코드
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        sleep(2)
        
        return true
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Melon,Youtube - 사용자 프리미엄 결제하면 play, 아니면 일시 정지
    }
    func applicationWillEnterForeground(_ application: UIApplication) {
        // youtube- 결제 안한 사람한테는 팝업창을 띄우세요.
        // kakaotalk
        // 금융앱
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
       
    }


}

