import UIKit

protocol Collection {
    associatedtype Item
    var count: Int { get }
    subscript(index: Int) -> Item { get }
    mutating func append(_ item: Item)
}

struct UppercaseStringsCollection: Collection {

    var container: [String] = []

    var count: Int { container.count }

    mutating func append(_ item: String) {
        guard !container.contains(item) else { return }
        container.append(item.uppercased())
    }

    subscript(index: Int) -> String {
        return container[index]
    }
}

