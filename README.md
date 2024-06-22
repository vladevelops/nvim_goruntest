![download](https://github.com/vladevelops/nvim_goruntest/assets/122153525/2486f67c-241a-4925-a57f-970fa0197f31)

# Go Test Runner for Neovim

This Neovim configuration allows you to run Go tests from anywhere within test scope, focusing on the test function under the cursor. It provides a simple set of functions and a keybinding to streamline your Go testing workflow.

## Features

- **Run Go tests under the cursor:** Automatically detects the test function name and executes it.
- **Simple integration:** Easily add the provided functions to your Neovim configuration.
- **Cache cleanup:** Cleans the Go test cache before running tests to ensure fresh results.


## Installation

To integrate this functionality into your Neovim setup, follow these steps:

1. **Copy the code.**

2. **Add the code to your Neovim configuration:**
   - You can directly paste the code into your configuration file.

3. **Reload Neovim or restart it** to apply the changes.

## Usage

With the configuration added, you can now run Go tests under the cursor by pressing the `<leader>rt` keybinding in normal mode. This keybinding will:

1. Determine the package name of the current file.
2. Verify that the file type is Go.
3. Identify the nearest test function under the cursor.
4. Open a split terminal and run the Go test for the identified function.

## Keybinding

- `<leader>rt`: Run the Go test function under the cursor.

## Contributing

Contributions are welcome! If you have suggestions or improvements, feel free to open an issue or submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.
