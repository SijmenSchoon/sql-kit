public struct SQLStartTransaction: SQLExpression {
    public enum Characteristic {
        case readWrite
        case readOnly
    }

    var characteristics: [Characteristic]

    public init() {
        self.characteristics = []
    }

    public func serialize(to serializer: inout SQLSerializer) {
        serializer.write("START TRANSACTION")
        for characteristic in characteristics {
            switch characteristic {
            case .readWrite:
                serializer.write(" READ WRITE")
            case .readOnly:
                serializer.write(" READ ONLY")
            }
        }
    }
}
