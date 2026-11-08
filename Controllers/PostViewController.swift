import UIKit

class PostViewController: UIViewController {
    
    var titlePost: String = "Пост"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
        
    private func setupView() { //
        view.backgroundColor = .lightGray
        navigationItem.title = titlePost
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: "Информация",
            style: .plain,
            target: self,
            action: #selector(infoButtonAction)
        )
    }
    
    @objc private func infoButtonAction() {
        let infoViewController = InfoViewController()
        infoViewController.modalPresentationStyle = .pageSheet
        present(infoViewController, animated: true)
    
    }
}
