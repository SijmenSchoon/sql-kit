public final class SQLStartTransactionBuilder: SQLQueryBuilder {
    public var startTransaction: SQLStartTransaction
    public var database: SQLDatabase

    public var query: SQLExpression {
        return self.startTransaction
    }

    public init(_ startTransaction: SQLStartTransaction, on database: SQLDatabase) {
        self.startTransaction = startTransaction
        self.database = database
    }

    public func readWrite() -> Self {
        self.startTransaction.characteristics.append(.readWrite)
        return self
    }

    public func readOnly() -> Self {
        self.startTransaction.characteristics.append(.readOnly)
        return self
    }
}

extension SQLDatabase {
    public func startTransaction() -> SQLStartTransactionBuilder {
        return .init(.init(), on: self)
    }
}
