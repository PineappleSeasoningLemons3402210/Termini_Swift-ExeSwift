# TerminiPublisher

A lightweight, safe terminal engine for iOS/iPadOS built with Swift.

---

## Overview

**TerminiPublisher** is part of the Termini ecosystem—a modular, sandboxed terminal system designed specifically for iOS and iPadOS.

It delivers a **realistic command-line experience** while fully respecting Apple’s security model.

---

## Features

* 🧠 Command parsing system
* 📦 Modular command architecture
* 📁 Virtual file system (sandboxed)
* ⚡ Lightweight and fast
* 🔒 Safe for iOS (no restricted execution)

---

## Philosophy

TerminiPublisher is **not a real shell**.

Instead, it simulates a terminal environment:

* No system-level command execution
* No unrestricted scripting
* Fully sandboxed and safe

---

## Installation

### Swift Package Manager

1. Open your project in Xcode
2. Go to: **File → Add Package Dependencies**
3. Paste:

```
https://github.com/PineappleSeasoningLemons3402210/Termini_Swift-ExeSwift
```

4. Add to your target

---

## Usage

```swift
import Termini

let output = TerminalEngine.shared.run("help")
print(output)
```

---

## Example Commands

| Command | Description             |
| ------- | ----------------------- |
| `ls`    | List files              |
| `echo`  | Print text              |
| `help`  | Show available commands |

---

## Project Structure

```
Sources/
└── Termini/
    ├── TerminalEngine.swift
    ├── CommandExecutor.swift
    ├── VirtualFileSystem.swift
    └── Commands/
```

---

## Roadmap

* [ ] `cd` (directory navigation)
* [ ] `mkdir` and file creation
* [ ] Nested file system
* [ ] Command flags (`ls -la`)
* [ ] AI-powered commands
* [ ] Remote execution support

---

## Contributing

Contributions are welcome. Feel free to fork and submit pull requests.

---

## License

MIT License

Copyright (c) 2026 PineappleSeasoningLemons3402210

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to do so, subject to the
following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
