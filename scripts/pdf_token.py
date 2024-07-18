""" This script is to be used in the command line to extract tokens from a PDF file.
It relies on PyPDF2 and open tiktoken
"""

import PyPDF2 as pdf
import tiktoken
import argparse

def num_tokens_from_string(string: str, encoding_name: str = "cl100k_base") -> int:
    """Returns the number of tokens in a text string."""
    encoding = tiktoken.get_encoding(encoding_name)
    num_tokens = len(encoding.encode(string))
    return num_tokens

def pdf_to_string(pdf_file: str) -> str:
    """Extract text from a PDF file."""
    with open(pdf_file, "rb") as file:
        reader = pdf.PdfReader(file)
        text = ""
        for page in reader.pages:
            text += page.extract_text()
    return text

def num_tokens_from_pdf(pdf_file: str, encoding_name: str = "cl100k_base") -> int:
    """Returns the number of tokens in a PDF file."""
    text = pdf_to_string(pdf_file)
    num_tokens = num_tokens_from_string(text, encoding_name)
    return num_tokens


# CLI
parser = argparse.ArgumentParser(description="Extract tokens from a PDF file.")
parser.add_argument("pdf_file", type=str, help="Path to the PDF file.")
parser.add_argument("--encoding", type=str, default="cl100k_base", help="Name of the encoding to use.")
args = parser.parse_args()

num_tokens = num_tokens_from_pdf(args.pdf_file, args.encoding)
print(num_tokens)

