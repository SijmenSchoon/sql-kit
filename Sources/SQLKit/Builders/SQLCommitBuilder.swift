public final class SQLCommitBuilder: SQLQueryBuilder {
    public var commit: SQLCommit
    public var database: SQLDatabase

    public var query: SQLExpression {
        return self.commit
    }

    public init(_ commit: SQLCommit, on database: SQLDatabase) {
        self.commit = commit
        self.database = database
    }
}

extension SQLDatabase {
    public func commit() -> SQLCommitBuilder {
        return .init(.init(), on: self)
    }
}
