My Awesome Python Project
============================

## Running the Project

To run the project, simply execute `main.py` in the root directory of the project:

```bash
python main.py
```
This script will use the Python modules and variables defined in this project to perform various tasks.

## File Paths and Directories

In your code, you'll often need to work with file paths and directories. To make things easier, we recommend using the `os` module. Here are 
some examples:


## Use 'os' to create a path compatible with any OS
```python
import os

# Define a file path (e.g., data/file.txt)
file_path = os.path.join('data', 'file.txt')

# Get the parent directory (e.g., ../data/file.txt)
parent_dir = os.path.abspath(os.path.join(os.getcwd(), os.pardir))
file_path = os.path.join(parent_dir, 'data', 'file.txt')

# Define a global directory for storing indices (platform-dependent)
if os.name == 'nt':  # Windows platform
    global_dir = os.path.join(os.getenv('ProgramData'), 'myapp')
else:  # Linux/Unix platform
    global_dir = os.path.join('/var', 'myapp')
```


### Building the Project

To build your project, simply run `build.sh` in the root directory:
```bash
./build.sh
```
This script will create a Docker image with Python installed and configured to match the version on your machine.
