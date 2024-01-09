## Prower
Welcome to Prowler, a tool for fetching and displaying information from robots.txt.

![image](https://github.com/EggS3c/prowler.sh/assets/82586952/3c2b9346-6d87-43cf-a966-244b3a806ee5).

Prowler is a Bash script that uses curl to download and display the contents of robots.txt from a specified URL. It can also fetch and display the contents of a specified file path.

## Description

Prowler is a versatile Bash script designed for web reconnaissance. With a focus on simplicity and effectiveness, it fetches and analyzes robots.txt files from target websites. The tool displays the contents of robots.txt, highlighting specific patterns to quickly identify disallowed paths, allowed paths, and more. Optionally, Prowler can fetch and display the content of specified files. A user-friendly and efficient choice for initial website analysis.

## Clone Project
git clone https://github.com/your-username/prowler.git

## Usage
Example 1: Display robots.txt content from a URL
./prowler.sh http://example.com

Example 2: Display robots.txt content and a specific file from a URL./prowler.sh http://example.com example_file.txt

Example 3: Display help message
./prowler.sh -help


## Parameters

-Url(htp://example.com): Specifies the target URL. The script fetches the robots.txt

-File_Path(Optional): If provided, the script retrieves
and displays the content of the specified file from the given URL


## Known Issues

1. **Output Formatting**: In certain cases, the output formatting may not display correctly on terminals with limited color support or specific configurations. We are actively working on improving the compatibility for a broader range of environments.

2. **URL Handling**: The script may encounter issues when handling URLs with special characters or unconventional formats. We recommend using URL encoding for such cases until a comprehensive fix is implemented.

3. **Verbose Mode Quirks**: Users might experience unexpected behavior when using the `--verbose` option in specific scenarios. We are investigating reported cases and will address these quirks in future updates.



## Contributor Expectations

I welcome contributions to enhance and improve Prowler! Before contributing, please take a moment to review the guidelines outlined below.

### Reporting Issues

If you encounter any issues or have suggestions for improvements, please create a new issue in the [issue queue](link_to_issues). Provide a clear and detailed description of the problem or enhancement you're suggesting.

### Pull Requests

I encourage you to submit pull requests to address reported issues or propose new features. Here's what we expect from pull requests:

1. **Fork the Repository:** Fork the repository to your own GitHub account.

2. **Create a Branch:** Create a new branch for your feature or bug fix.

3. **Commit Guidelines:** Follow a clear and concise commit message format. If your pull request addresses an issue, reference it in the commit message (e.g., "Fixes #123").

4. **Squash Commits:** If you have multiple commits, consider squashing them into a single, well-documented commit.

5. **Pull Request Template:** Complete the provided pull request template with necessary details about your changes.

6. **Testing:** Ensure your changes are thoroughly tested and do not introduce new issues.

7. **Documentation:** Update the README or other relevant documentation if necessary.

8. **Code Style:** Adhere to the existing code style and formatting.

### Code of Conduct

Please note that this project follows a [Code of Conduct](link_to_code_of_conduct). By participating, you are expected to uphold this code.

Thank you for contributing to Prowler! 🚀

