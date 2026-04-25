struct LSCommand {
    static func run(engine: TerminalEngine) -> String {
        guard let node = VirtualFileSystem.findNode(path: engine.currentPath) else {
            return "Directory not found"
        }
        
        return node.children.map { $0.name }.joined(separator: "\n")
    }
}
