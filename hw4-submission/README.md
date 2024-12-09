# DirectedGraph Project

This project implements a Directed Graph with BFS and DFS algorithms.

---

## Setting Up and Running the Project in Visual Studio Code

### 1. Prerequisites:
- Visual Studio Code (VS Code) installed on your system.
- MSYS2 installed and configured (includes gcc, make, cmake, etc.).
- CMake installed through MSYS2 or another source.
- Git installed (optional, for version control).

### 2. Install Required Tools

Using MSYS2's terminal:

```bash
# Update MSYS2
pacman -Syu

# Install required packages
pacman -S gcc cmake make zip unzip

# Open the Project in VS Code
Open VS Code.
Click on File > Open Folder.
Select the folder containing the DirectedGraph project.
#  Configure the Build Environment
Install the CMake Tools extension in VS Code:

Go to the Extensions view (Ctrl+Shift+X or Cmd+Shift+X on macOS).
Search for CMake Tools and install it.

# Set Up MSYS Terminal in VS Code
Open the Command Palette (Ctrl+Shift+P).
Search for Terminal: Select Default profile.

#  Open a New Terminal in VS Code in Your Project Directory
To make the Build folder so that CMakeLists.txt can get pasted there.

Run the following commands in your project root:

rm -rf build  # (Only if running the project the second time or onwards; not necessary the first time)
mkdir build
cd build
cmake ..
make

The project should successfully build

# Testing the Functionality
Now that the project is built, enter the following commands to ensure the functionality of the project:

./TestGraph
./TestBFS
./TestDFS

# Creating a Submission
To zip the files for submission, run the following command:

./generate_submission.sh


