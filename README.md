# Hugo PDF docker action

This action generates a PDF from a hugo site

## Inputs

## `source`

**Not Required** HTML file to convert. Default `"public/index.html"`.

## `pdf`

**Not Required** PDF file to generate. Default `"output.pdf"`.

## Example usage

uses: noworrieseh/hugo-pdf-action@v1
with:
  source: 'public/index.html'
  pdf: 'output.pdf'
