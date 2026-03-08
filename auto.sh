#!/bin/bash

set -e

echo "Starting CV generation..."

# 1. Convert LaTeX to HTML
echo "Converting .tex to HTML..."
pandoc Nhat_CV.tex -o docs/index.html --css style.css --self-contained

# 2. Convert HTML to PDF
echo "Generating PDF..."
wkhtmltopdf docs/index.html Nhat_CV.pdf

echo "Success! Nhat_CV.pdf has been created."