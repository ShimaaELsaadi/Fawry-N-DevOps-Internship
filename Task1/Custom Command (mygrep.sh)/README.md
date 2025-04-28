# Documentation for `mygrep.sh`

## Overview
The `mygrep.sh` script is a custom Bash implementation of the `grep` command. It provides functionality to search for patterns in files with support for various command-line options. The script mimics the behavior of `grep` while ensuring robust error handling for invalid inputs.

## Features
- **Core Functionality**:
    - Search for a string in a file (case-insensitive by default).
    - Print matching lines from the file.
- **Command-Line Options**:
    - `-n`: Display line numbers for each match.
    - `-v`: Invert the match (show lines that do not match).
    - `-c`: Count the number of matching lines.
    - `-l`: List files containing matches.
    - `-I`: Perform a case-sensitive search (disables default case-insensitive behavior).
    - `-E`: Enable extended regular expressions.
    - Supports combinations of options (e.g., `-vn`, `-cl`).
- **Error Handling**:
    - Validates the presence of required arguments (search string and file).
    - Checks file existence and readability.
    - Displays clear error messages for invalid inputs.
- **Bonus Features**:
    - Includes a `--help` flag to display usage information.
    - Enhanced option parsing using `getopts`.

## Repository Structure

The repository includes the following files:

```
/home/shaimaa/DEVOPS/Fawry-N-DevOps-Internship/Task1/Custom Command (mygrep.sh)/
├── mygrep.sh          # Main script implementing the custom grep functionality.
├── help.sh            # Helper script containing the `display_help` function.
├── testfile.txt       # Sample text file for testing the script.
├── README.md          # Documentation for the `mygrep.sh` script.
├── screenshots/       # Directory containing screenshots of example commands.
```

## Usage
### Example Commands with Screenshots

1. **Basic Search**:
    ```bash
    ./mygrep.sh hello testfile.txt
    ```
    Output: Prints lines containing the word "hello" (case-insensitive by default).

    ![Basic Search](./screenshots/basic_search.png)

2. **Search with Line Numbers**:
    ```bash
    ./mygrep.sh -n hello testfile.txt
    ```
    Output: Prints matching lines with their line numbers.

    ![Search with Line Numbers](./screenshots/line_numbers.png)

3. **Invert Match with Line Numbers**:
    ```bash
    ./mygrep.sh -vn hello testfile.txt
    ```
    Output: Prints lines that do not contain "hello" with their line numbers.

    ![Invert Match](./screenshots/invert_match.png)

4. **Case-Sensitive Search**:
    ```bash
    ./mygrep.sh -I hello testfile.txt
    ```
    Output: Prints lines containing the word "hello" (case-sensitive, as `-I` disables the default case-insensitive behavior).

    ![Case-Sensitive Search](./screenshots/case_sensitive_search.png)

5. **Count Matching Lines**:
    ```bash
    ./mygrep.sh -c hello testfile.txt
    ```
    Output: Displays the number of lines containing the word "hello".

    ![Count Matching Lines](./screenshots/count_matching_lines.png)

6. **List Files with Matches**:
    ```bash
    ./mygrep.sh -l hello testfile.txt
    ```
    Output: Displays the file name if it contains matches.

    ![List Files with Matches](./screenshots/list_files_with_matches.png)

7. **Missing Search String or File Name**:
    ```bash
    ./mygrep.sh -v testfile.txt
    ```
    Output: Displays an error message indicating the missing search string.

    ![Missing Search String or File Name](./screenshots/missing_string_or_file_name.png)

## Notes
- The script is a simplified version of `grep` with additional error handling.
- It is designed to handle invalid inputs (e.g., missing file or insufficient arguments) gracefully.

## License
This project is licensed under the MIT License.
