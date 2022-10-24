import UIKit

public extension UIButton {
	
	typealias Action = () -> Void
	
	var onTap: Action? {
		get {
			associatedObject(for: "onTapAction") as? Action
		}
		set {
			set(associatedObject: newValue, for: "onTapAction")
		}
	}
	
	func onTap(_ action: @escaping Action) -> Self {
		self.onTap = action
		addTarget(self, action: #selector(didTouchUpInside), for: .touchUpInside)
		return self
	}
	
	@objc func didTouchUpInside() {
		onTap?()
	}
}
