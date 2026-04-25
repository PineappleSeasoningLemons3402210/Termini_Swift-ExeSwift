struct PWDCommand {
    static func run(engine: TerminalEngine) -> String {
        return engine.currentPath
    }
}
