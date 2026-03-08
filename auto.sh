#!/bin/bash

set -e

echo "Starting CV generation..."

# 1. Convert LaTeX to HTML
echo "Converting .tex to HTML..."
pandoc Nhat_CV.tex -o Nhat_CV.html --css style.css --self-contained

# 2. Convert HTML to PDF
echo "Generating PDF..."
wkhtmltopdf Nhat_CV.html Nhat_CV.pdf

echo "Success! Nhat_CV.pdf has been created."