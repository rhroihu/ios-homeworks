import UIKit

class FeedViewController: UIViewController {
    
    var post = Post(title: "Мой пост")
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        button.layer.cornerRadius = 10
        button.setTitle("Перейти на пост", for: .normal)
        button.setTitleColor(.lightGray, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.addTarget(self,
                         action: #selector(buttonAction),
                         for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        setupButton()
    }
        
    private func setupButton() {
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.bottomAnchor.constraint(
                equalTo: view.bottomAnchor,
                constant: -100
            ),
            button.leadingAnchor.constraint(
                equalTo: view.leadingAnchor,
                constant: 20
            ),
            button.trailingAnchor.constraint(
                equalTo: view.trailingAnchor,
                constant: -20
            ),
            button.heightAnchor.constraint(
                equalToConstant: 50
            )
        ])

    }
        
    @objc private func buttonAction() {
        let postViewController = PostViewController()
        postViewController.titlePost = post.title
        navigationController?.pushViewController(
            postViewController,
            animated: true
        )
    }
    }

