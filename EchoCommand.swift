struct EchoCommand {
    static func run(args: [Substring]) -> String {
        return args.joined(separator: " ")
    }
}
