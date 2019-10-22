public struct SQLRollback: SQLExpression {
    public func serialize(to serializer: inout SQLSerializer) {
        serializer.write("ROLLBACK")
    }

    public init() {}
}
