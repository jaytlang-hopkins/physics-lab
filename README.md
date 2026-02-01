# A Little Notebook Template :memo:

This repository serves as a template for managing and compiling Python notebook-based lab reports into PDFs with a consistent style. It's effectively a replacement for the Jupyter's `File->Print`.

## What's in it

- **`skel/data/`** – Data folder; for spreadsheets and binary input files
- **`skel/images/`** – Images folder; for any diagrams or additional figures
- **`skel/text.mplstyle`** – Matplotlib style configuration for plots
- **`skel/Makefile`** – Build automation to convert notebooks to LaTeX, generate PDFs, and create a zipped archive of the report for submission
- **`bootstrap.sh`** – Shortcut to format a new lab directory (as necessary) and launch Jupyter

## What it does

- Converts a Jupyter notebook (`lab.ipynb`) to LaTeX and then PDF.
- Automatically sets the document title and author in the PDF.
- Uses a custom Matplotlib style with:
  - High-resolution figures (300 DPI)
  - Serif font with LaTeX typesetting
  - Grid and axis customization
  - Custom color cycle for plots
- Produces a `.zip` archive suitable for upload to Canvas, excluding the build files themselves

## Usage

Ensure you have a full LaTeX distribution installed. Then,

```sh
make dist  # build the PDF and the zip archive
make       # shorthand for the above
make pdf   # only builds the PDF
make clean # removes generated files
```

## License

GPLv3.
