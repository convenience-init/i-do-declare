import UIKit

public extension UIStackView {
	func views(_ views: UIView ...) -> Self {
		views.forEach { self.addArrangedSubview($0) }
		return self
	}
}
