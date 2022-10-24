import Foundation

public protocol AnyObjWithable: AnyObject {
	
	associatedtype T
	init()
	
	/// Provides a closure to configure instances inline.
	@discardableResult
	func with(_ closure: (_ instance: T) -> Void) -> T
}

public extension AnyObjWithable {
	
	init(with closure: (Self) -> Void) {
		self.init()
		closure(self)
	}
	
	@discardableResult
	func with(_ closure: (_ instance: Self) -> Void) -> Self {
		closure(self)
		return self
	}
}

extension NSObject: AnyObjWithable { }

// MARK: - Values
public protocol AnyWithable {
	associatedtype T
	init()
	
	/// Provides a closure to configure instances inline.
	@discardableResult
	func with(_ closure: (_ instance: inout T) -> Void) -> T
}

public extension AnyWithable {
	/// Construct a new instance, setting properties in closure
	init(with closure: (inout Self) -> Void) {
		self.init()
		closure(&self)
	}
	
	@discardableResult
	func with(_ closure: (_ instance: inout Self) -> Void) -> Self {
		var copy = self
		closure(&copy)
		return copy
	}
}

/* Examples
 struct Foo: AnyWithable, AnyObjWithable {
 var bar: Int = 0
 var baz: Bool = false
 }
 //InitWithable
 let foo = Foo { $0.bar = 5; $0.baz = false }
 .with { //Withable
 $0.baz = true
 }
 */
