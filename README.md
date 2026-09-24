# Competitive Programming

![C](https://img.shields.io/badge/C-C17-A8B9CC?style=flat&logo=c&logoColor=white)
![C++](https://img.shields.io/badge/C++-C++17-00599C?style=flat&logo=cplusplus&logoColor=white)
![GCC](https://img.shields.io/badge/compiler-GCC%2013-informational?style=flat)
![Platform](https://img.shields.io/badge/platform-Ubuntu%20Linux-E95420?style=flat&logo=ubuntu&logoColor=white)
![Editor](https://img.shields.io/badge/editor-VS%20Code-007ACC?style=flat&logo=visualstudiocode&logoColor=white)
![License](https://img.shields.io/badge/license-MIT-green?style=flat)

A structured, long-term repository for learning **C** and **C++** from the fundamentals and applying them to competitive programming and problem solving. It contains topic-wise learning code, solutions to problems from online judges, reusable templates, and personal notes.

---

## Table of Contents

- [About](#about)
- [Repository Structure](#repository-structure)
- [Getting Started](#getting-started)
- [Build and Run](#build-and-run)
- [Templates](#templates)
- [Naming Conventions](#naming-conventions)
- [Practice Platforms](#practice-platforms)
- [Progress](#progress)
- [Roadmap](#roadmap)
- [Author](#author)
- [License](#license)

---

## About

This repository documents my journey from C basics to C++ and competitive programming. The goals are:

- Build a strong foundation in C (memory, pointers, arrays, strings) before moving on to C++.
- Learn C++ and the Standard Template Library (STL) with an emphasis on writing clean, efficient code.
- Solve problems consistently on major online judges and keep a searchable record of the approaches used.
- Maintain a log of mistakes and lessons learned, so the same bug is never made twice.

## Repository Structure

```
competitive-programming/
├── c/
│   ├── learning/            # Topic-wise C programs
│   │   ├── 01-basics/
│   │   ├── 02-operators/
│   │   ├── 03-conditions/
│   │   ├── 04-loops/
│   │   ├── 05-functions/
│   │   ├── 06-arrays/
│   │   ├── 07-strings/
│   │   ├── 08-pointers/
│   │   ├── 09-structs/
│   │   ├── 10-file-io/
│   │   ├── 11-dynamic-memory/
│   │   └── 12-mini-projects/
│   ├── problems/            # Online judge solutions in C
│   │   ├── codeforces/
│   │   ├── cses/
│   │   ├── atcoder/
│   │   ├── leetcode/
│   │   ├── hackerrank/
│   │   ├── lightoj/
│   │   ├── beecrowd/
│   │   ├── daily-practice/
│   │   └── misc/
│   └── templates/           # Starter files
├── cpp/
│   ├── learning/            # Topic-wise C++ programs
│   │   ├── 01-basics/
│   │   ├── 02-conditions-loops/
│   │   ├── 03-functions/
│   │   ├── 04-arrays-strings/
│   │   ├── 05-pointers-references/
│   │   ├── 06-oop/
│   │   ├── 07-stl/
│   │   ├── 08-algorithms/
│   │   ├── 09-file-io/
│   │   └── 10-mini-projects/
│   ├── problems/            # Online judge solutions in C++ (same platforms as c/)
│   └── templates/           # Starter and competitive programming templates
├── notes/
│   ├── cheatsheet.md        # Quick reference
│   └── mistakes-log.md      # Bugs, wrong answers and lessons learned
├── .gitignore
├── LICENSE
└── README.md
```

## Getting Started

### Prerequisites

| Tool | Version | Purpose |
|------|---------|---------|
| GCC / G++ | 13 or newer | Compile C17 and C++17 |
| GDB | 15 or newer | Debugging |
| clang-format | any | Code formatting |
| Git | any | Version control |

Install on Ubuntu:

```bash
sudo apt update
sudo apt install -y build-essential gdb clang-format valgrind git
```

Verify:

```bash
gcc --version
g++ --version
gdb --version
```

### Clone

```bash
git clone https://github.com/<your-username>/competitive-programming.git
cd competitive-programming
```

## Build and Run

**C**

```bash
gcc -std=c17 -Wall -Wextra -Wshadow -g file.c -o file -lm
./file
```

**C++**

```bash
g++ -std=c++17 -Wall -Wextra -Wshadow -DLOCAL -g file.cpp -o file
./file
```

**Debug build with sanitizers** (catches out-of-bounds access, overflow and undefined behavior):

```bash
g++ -std=c++17 -g -Wall -Wextra -fsanitize=address,undefined -D_GLIBCXX_DEBUG -DLOCAL file.cpp -o file
```

The `LOCAL` macro enables the `dbg()` helper in the competitive programming template. It is compiled out when submitting to a judge.

## Templates

| File | Description |
|------|-------------|
| `c/templates/boilerplate.c` | Minimal C program |
| `c/templates/problem.c` | C template with problem header and input example |
| `cpp/templates/boilerplate.cpp` | Minimal C++ program |
| `cpp/templates/problem.cpp` | C++ template with problem header and fast I/O |
| `cpp/templates/cp_template.cpp` | Full competitive programming template (fast I/O, `dbg()` macro, multi-test structure) |

Each solution starts with a short header:

```cpp
/*
 * Problem : <name>
 * Link    : <url>
 * Date    : <yyyy-mm-dd>
 * Idea    : <one or two lines describing the approach>
 */
```

## Naming Conventions

| Location | Format | Example |
|----------|--------|---------|
| `learning/` | `topic-or-task.ext` | `swap-pointer.c` |
| `problems/codeforces/` | `<contest-id><letter>.ext` | `1800B.cpp` |
| `problems/cses/` | `<problem-name>.ext` | `weird-algorithm.cpp` |
| `problems/leetcode/` | `<number>-<name>.ext` | `1-two-sum.cpp` |
| `problems/daily-practice/` | `<yyyy-mm-dd>-<n>.ext` | `2026-09-25-a.cpp` |

Folders and files use lowercase letters and hyphens. No spaces.

## Practice Platforms

- [Codeforces](https://codeforces.com)
- [CSES Problem Set](https://cses.fi/problemset/)
- [AtCoder](https://atcoder.jp)
- [LeetCode](https://leetcode.com)
- [HackerRank](https://www.hackerrank.com)
- [LightOJ](https://lightoj.com)
- [Beecrowd](https://www.beecrowd.io)

## Progress

| Platform | Solved | Notes |
|----------|:------:|-------|
| Codeforces | 0 | |
| CSES | 0 | |
| AtCoder | 0 | |
| LeetCode | 0 | |
| HackerRank | 0 | |
| LightOJ | 0 | |
| Beecrowd | 0 | |

**Learning tracks**

- [ ] C fundamentals
- [ ] C pointers and memory
- [ ] C++ fundamentals
- [ ] C++ OOP
- [ ] STL (vector, map, set, queue, stack, priority_queue)
- [ ] Algorithms (sorting, searching, two pointers, prefix sums)
- [ ] Recursion and backtracking
- [ ] Greedy
- [ ] Dynamic programming
- [ ] Graphs (BFS, DFS, shortest paths)
- [ ] Number theory

## Roadmap

1. Complete C fundamentals and pointers with topic-wise programs.
2. Move to C++ and the STL, re-solving earlier C programs in C++.
3. Solve beginner problem sets (CSES Introductory, Codeforces Div. 3/4 A and B).
4. Start participating in live contests and upsolving.
5. Study core algorithms and data structures, and add reusable implementations under `cpp/templates/`.

## Author

**Ahsan Habib Hamim**
Dhaka, Bangladesh

- GitHub: [@your-username](https://github.com/AhsanHabibHamim)
- LinkedIn: [your-profile](https://www.linkedin.com/in/ahsan_hamim)

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
