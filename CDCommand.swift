struct CDCommand {
    static func run(args: [Substring], engine: TerminalEngine) -> String {
        guard let target = args.first else {
            return "cd: missing argument"
        }
        
        let newPath: String
        
        if target == "/" {
            newPath = "/"
        } else if target == ".." {
            var components = engine.currentPath.split(separator: "/").map { String($0) }
            _ = components.popLast()
            newPath = "/" + components.joined(separator: "/")
        } else {
            if engine.currentPath == "/" {
                newPath = "/" + target
            } else {
                newPath = engine.currentPath + "/" + target
            }
        }
        
        if VirtualFileSystem.findNode(path: newPath) != nil {
            engine.setPath(newPath)
            return ""
        } else {
            return "cd: no such file or directory: \(target)"
        }
    }
}
