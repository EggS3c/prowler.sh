# Prowler
![image](https://github.com/EggS3c/prowler.sh/assets/82586952/76e25dff-b840-4ade-8c5a-73b19e788942)

Prowler is a simple Bash script to fetch and display the contents of `robots.txt` from a target URL, with additional options to highlight specific patterns and fetch and display content from a specified file path.

## Usage

```bash
./prowler http://example.com 
./prowler.sh http://example.com [file_path] ```


Options
-help: Display usage information.
Arguments
http://example.com: Specify the target URL.
[file_path]: Optional file path to fetch and display.
Features
Fetch and display robots.txt content.
Highlight specific patterns in the content.
Fetch and display content from a specified file path.
Getting Started
Clone the repository:

bash
Copy code
git clone https://github.com/your-username/prowler.git
Navigate to the repository:

bash
Copy code
cd prowler
Run the script:

bash
Copy code
./prowler.sh http://example.com [file_path]
Examples
Display robots.txt
bash
Copy code
./prowler.sh http://example.com
Display robots.txt and highlight patterns
bash
Copy code
./prowler.sh http://example.com -pattern
Display content from a specified file path
bash
Copy code
./prowler.sh http://example.com /path/to/file


