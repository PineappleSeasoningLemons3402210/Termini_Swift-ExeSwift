import Foundation

final class FileNode {
    let name: String
    var isDirectory: Bool
    var children: [FileNode]
    
    init(name: String, isDirectory: Bool) {
        self.name = name
        self.isDirectory = isDirectory
        self.children = []
    }
}

class VirtualFileSystem {
    
    static let root: FileNode = {
        let root = FileNode(name: "/", isDirectory: true)
        
        let documents = FileNode(name: "Documents", isDirectory: true)
        let downloads = FileNode(name: "Downloads", isDirectory: true)
        let file = FileNode(name: "readme.txt", isDirectory: false)
        
        root.children = [documents, downloads, file]
        return root
    }()
    
    static func findNode(path: String) -> FileNode? {
        if path == "/" { return root }
        
        let parts = path.split(separator: "/").map { String($0) }
        var current = root
        
        for part in parts {
            if let next = current.children.first(where: { $0.name == part }) {
                current = next
            } else {
                return nil
            }
        }
        
        return current
    }
}
