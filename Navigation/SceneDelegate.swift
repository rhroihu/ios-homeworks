import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        
        guard let windowScene = scene as? UIWindowScene else { return }
        
        let window = UIWindow(windowScene: windowScene)
        
        window.rootViewController = createTabBarController()
        
        self.window = window
        window.makeKeyAndVisible()
        
        func createTabBarController() -> UITabBarController {
            let tabBarController = UITabBarController()
            tabBarController.viewControllers = [createFeedViewController(), createProfileViewController()]
            UITabBar.appearance().backgroundColor = .systemBlue
            return tabBarController
        }
        
        func createFeedViewController() -> UINavigationController {
            let feedViewController = FeedViewController()
            feedViewController.title = "Лента"
            feedViewController.tabBarItem = UITabBarItem(
                title: "Лента",
                image: UIImage(systemName: "doc.richtext"),
                tag: 0
            )
            return UINavigationController(rootViewController: feedViewController)
        }
        
        func createProfileViewController() -> UINavigationController {
            let profileViewController = ProfileViewController()
            profileViewController.title = "Профиль"
            profileViewController.tabBarItem = UITabBarItem(
                title: "Профиль",
                image: UIImage(systemName: "person.circle"),
                tag: 1
            )
            return UINavigationController(rootViewController: profileViewController)
        }
     
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }
    


}

