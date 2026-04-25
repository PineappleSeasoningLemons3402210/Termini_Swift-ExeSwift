import Foundation

struct CommandExecutor {
    
    static func execute(_ input: String, engine: TerminalEngine) -> String {
        let parts = input.split(separator: " ")
        guard let command = parts.first else { return "" }
        
        let args = Array(parts.dropFirst())
        
        switch command {
        case "ls":
            return LSCommand.run(engine: engine)
        case "echo":
            return EchoCommand.run(args: args)
        case "help":
            return HelpCommand.run()
        case "pwd":
            return PWDCommand.run(engine: engine)
        case "cd":
            return CDCommand.run(args: args, engine: engine)
        default:
            return "\(command): command not found"
        }
    }
}
