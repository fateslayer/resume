# Resume

A resume for Ajaz Ur Rehman, built with [Typst](https://typst.app/).

## Prerequisites

- **Typst** – Install from [typst.app](https://typst.app/) or via your package manager:

    ```bash
    # Ubuntu/Debian
    sudo apt install typst

    # Or via cargo
    cargo install typst-cli
    ```

## How to run

1. Compile to PDF:

    ```bash
    typst compile resume.typ resume.pdf
    ```

2. Watch mode (recompile on save):

    ```bash
    typst watch resume.typ resume.pdf
    ```

3. View the PDF:
    ```bash
    evince resume.pdf
    # or
    xdg-open resume.pdf
    ```
