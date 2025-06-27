# project-templates

Project with project templates for VS Code, based on the extension [Project Templates extension for VSCode](https://github.com/cantonios/vscode-project-templates).

## Structure

- **docker-images** — folder containing base Docker images used in the project templates.
- **vscode-templates** — contains nested directories with project templates that are installed via the Project Templates extension for VSCode.

## How to use

1. In the terminal (Ctrl+J), navigate to any subdirectory inside `vscode-templates` (e.g. `cd vscode-templates/devops-ansible`).
2. Open a new VSCode window with this directory as the project root by running `code .`
3. Press `Ctrl+Shift+P` and execute the command `Project: Save Project as Template` to save the current project as a template.
4. To create a new project from a template:
    1. Open VSCode in the desired directory (`code .`).
    2. Press `Ctrl+Shift+P` and execute the command `Project: Create Project from Template`.
    3. Select one of the saved templates. The template will be copied to the current directory and ready for use.
