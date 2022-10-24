import UIKit

open class `VStack`: UIStackView {
	
	public init(alignment: UIStackView.Alignment = .fill, spacing: CGFloat = 0, content: @escaping () -> [UIView]) {
		super.init(frame: .zero)
		
		content().forEach({addArrangedSubview($0)})
		self.alignment = alignment
		self.spacing = spacing
		self.axis = .vertical
	}
	
	required public init(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
}

fileprivate extension Array where Element: UIView {
	
	func add(to stackView: UIStackView) {
		forEach { stackView.addArrangedSubview($0) }
	}
}
