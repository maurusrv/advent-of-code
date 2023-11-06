# The Advent of Agnostic Code
Since I get bored or lazy easily to create those passion projects, here is a repo of me solving the problems in Advent of Code using different programming languages for practice!

## Typescript
### Configuration
1. Just uses `npm` for now.
2. `vitest` is used as testing tool.
3. To run tests: `npm test`
4. To run benchmark: `npm run bench`

### Learnings
1. `tinybench` integrated in vitest is handy.

## Go
### Configuration
1. `gotest` is used for colorized go tests.
2. To run tests: `gotest -v`
3. To run benchmark: `gotest -bench=.`
### Learnings
1. Conventionally capital case for function names.
2. No optional parameters for functions.
### TODO
1. Find a way for go folder to run all tests without accessing specific folders.

## Rust
### Configuration
1. Used `cargo` to setup folder.
2. to run test `cargo test`
3. `criterion` is used for benchmarking.
4. to run benchmark: `cargo bench`
### Learnings
1. Created the folder as a library crate for now.
2. Read that the unit tests for each module is included within its own file.
3. & - only a reference!
4. \* - deferencing the borrow to get the value!

## Ruby
### Configuration
1. `rspec` is used as testing tool.
2. To run tests: `rspec`
3. To run benchmark: `ruby [dayx_bench.rb]`
### Learnings
1. `each_` is handy for readability in looping strings (as an array)
2. returning on a function without the return keyword is amazing! haha
### TODO
1. Benchmark is shitty, no colors, and I need to check first how to best implement the benchmark inside rspec.

## Python
### Configuration
1. `pytest` is used as testing tool.
2. To run tests: `pytest`. The benchmark is included in the result logs.
### Learnings
1. Easy to setup and adapt since types are defined by values.
2. I'm liking no braces for a change!

## Elixir
### Configuration
1. Used `mix` for setup.
2. `espec` is used as testing framework to have that context, describe, and it blocks.
3. To run tests: `mix espec`
### Learnings
1. Pattern matching and pipe is a breath of fresh air. Gotta check back the other languages' implem to try really utilizing what each of the language can do or shines.
### References
1. [Writing Assertive Code With Elixir](https://dashbit.co/blog/writing-assertive-code-with-elixir)

## Zig
### Configuration
1. To run tests: `zig test test.zig`
### TODO
1. How to properly use hash maps, and loops?
2. Make vscode lsp work.
3. Run all tests in single command with right number of tests.

## TODO
1. Might try putting my personalized puzzle inputs on a text file. Then maybe also practice file access on each programming languages, but who knows when.
2. Add programming language installation maybe. But I'm basically using `asdf`. See `.tool-versions`

## Notes
1. Learnings are not comprehensive, only the notable things I observe at the time of practicing and current skill.
2. Go to a specific language directory to be able to run the commands properly.