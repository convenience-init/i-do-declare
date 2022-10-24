
import UIKit

open class `Spacer`: UIView {
	public init() {
		super.init(frame: .zero)
		self.setContentHuggingPriority(.required, for: .horizontal)
		self.setContentHuggingPriority(.required, for: .vertical)
	}
	
	required public init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}

