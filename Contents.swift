
import UIKit

struct ModelResponse {
    let personName: String
}

protocol HomeViewType {
    func show()
}

protocol HomeViewControllerType {
    func didTapContinueButtonSend(model: ModelResponse)
}

final class HomeViewController: UIViewController {

    private let contentView: HomeViewType

    init(contentView: HomeViewType) {
        self.contentView = contentView
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HomeViewController: HomeViewControllerType {

    func didTapContinueButtonSend(model: ModelResponse) {
        print("The person name is: \(model.personName)")
    }
}
