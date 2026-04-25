import Foundation

public final class TerminalEngine {
    public static let shared = TerminalEngine()
    
    public private(set) var history: [String] = []
    public private(set) var currentPath: String = "/"
    
    private init() {}
    
    @discardableResult
    public func run(_ input: String) -> String {
        let trimmed = input.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty else { return "" }
        
        history.append(trimmed)
        return CommandExecutor.execute(trimmed, engine: self)
    }
    
    func setPath(_ path: String) {
        currentPath = path
    }
}
