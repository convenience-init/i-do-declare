import UIKit

public extension UILabel {
	
	func with(text: String?) -> Self {
		with {
			$0.text = text
		}
	}
	
	var withTitleStyle: UILabel {
		with {
			$0.textColor = .label
			$0.font = .preferredFont(
				forTextStyle: .largeTitle
			)
		}
	}
	
	var withChipViewStyle: UILabel {
		with {
			$0.textColor = .systemBackground
			$0.font = .preferredFont(forTextStyle: .headline)
			$0.setContentCompressionResistancePriority(.required, for: .vertical)
		
		}
	}

}
