public struct SQLCommit: SQLExpression {
    public func serialize(to serializer: inout SQLSerializer) {
        serializer.write("COMMIT")
    }
}
