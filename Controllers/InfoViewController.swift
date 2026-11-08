import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .white
        title = "Информация"
        
        let button = UIButton()
        button.setTitle("Показать алерт", for: .normal)
        button.backgroundColor = .red
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.addTarget(
            self,
            action: #selector(showAlert),
            for: .touchUpInside
        )
        
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: "Закрыть",
            style: .done,
            target: self,
            action: #selector(closeButtonAction)
            )
        }
    
    @objc func closeButtonAction() {
        dismiss(animated: true)
    }
    
    @objc func showAlert() {
        let alert = UIAlertController(
            title: "Внимание",
            message: "Выбери одно из двух действий",
            preferredStyle: .alert
        )
        
        let firstAction = UIAlertAction(
            title: "Первое",
            style: .default
        ) { _ in
            print("Первое действие выполнено")
        }
        
        let secondAction = UIAlertAction(
            title: "Второе",
            style: .cancel
        ) { _ in
            print("Второе действие выполнено")
        }
        
        alert.addAction(firstAction)
        alert.addAction(secondAction)
        
        present(alert, animated: true)
    }
}
