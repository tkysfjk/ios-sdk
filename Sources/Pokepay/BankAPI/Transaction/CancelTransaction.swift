import APIKit

public extension BankAPI.Transaction {
    struct Cancel: BankRequest {
        public let id: String

        public typealias Response = NoContent

        public init(id: String) {
            self.id = id
        }

        public var method: HTTPMethod {
            return .delete
        }

        public var path: String {
            return "/transactions/\(id)"
        }
    }
}
