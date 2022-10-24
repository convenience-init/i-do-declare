import UIKit

public extension UIImageView {
	
	func with(image: UIImage?) -> Self {
		with {
			$0.image = image
		}
	}
}
