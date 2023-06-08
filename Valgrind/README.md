# Valgrind Commands for C++

## Memory Error Detection

- `$ valgrind --leak-check=full ./program`: Checks for memory leaks in your program.
- `$ valgrind --show-reachable=yes ./program`: Displays reachable blocks in addition to memory leaks.
- `$ valgrind --track-origins=yes ./program`: Shows the origin of uninitialized values.
- `$ valgrind --leak-check=full --show-leak-kinds=all ./program`: Displays detailed information about the memory leaks.

## Profiling

- `$ valgrind --tool=callgrind ./program`: Generates a call graph and profiles the program's execution.
- `$ valgrind --tool=massif ./program`: Provides heap profiling information.
- `$ valgrind --tool=cachegrind ./program`: Simulates cache behavior and helps optimize cache usage.

## Thread Debugging

- `$ valgrind --tool=helgrind ./program`: Checks for thread synchronization errors (e.g., data races, deadlocks).

## Suppression Files

- `$ valgrind --suppressions=filename`: Specifies a file with suppression rules to filter out known issues and noise.
