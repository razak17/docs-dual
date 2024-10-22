import re

def sanitize_string2(input_str):
    # Remove newlines
    input_str = re.sub(r"\n", " ", input_str)
    # Remove extra spaces
    input_str = re.sub(r"\s+", " ", input_str)
    # Remove leading and trailing spaces
    input_str = input_str.strip()
    return input_str

def sanitize_string(input_str):
    # Remove leading/trailing whitespace
    cleaned_str = input_str.strip()

    # Split the string into lines
    lines = cleaned_str.split('\n')

    # Remove numbering and extra whitespace from each line
    sanitized_lines = [re.sub(r'^\d+\.\s*', '', line.strip()) for line in lines if line.strip()]

    # Join the sanitized lines into a single string
    result = ' '.join(sanitized_lines)



str_to_sanitize = """Enhance this section by:
1. Outlining any preliminary discussions with the FDA, if any have occurred.
2. Mentioning any regulatory advantages (e.g., orphan drug designation potential).
3. Briefly describing the regulatory strategy, including plans for FDA consultations."""

sanitized_str = sanitize_string2(str_to_sanitize)
print(sanitized_str)

eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoidGVzdHVzZXJAZnJlZW1pbmRjb25zdWx0YW50cy5jb20iLCJleHBpcmVzIjoxNzI3ODg1NDU4LjU2Njc1OX0.up8hsyd3gESoNZxuPzLaRZqeY7_TsCtniPlm-Ry-J0g
