from urllib.parse import urlparse

# Configure AWS credentials (make sure you have proper access)
# You can also use AWS CLI or environment variables to set these
aws_access_key_id = 'YOUR_ACCESS_KEY'
aws_secret_access_key = 'YOUR_SECRET_KEY'
aws_region = 'eu-north-1'

# Parse the S3 URL
s3_url = "https://freemind-two-dev-docs.s3.eu-north-1.amazonaws.com/one-pager-templates/l1977ae2516974796a5cd9423ba8c43a2/One_pager_template__for_a_grant_proposal___R01_R21.docx"
parsed_url = urlparse(s3_url)
print(f"DEBUGPRINT[1]: s3.py:11: parsed_url={parsed_url}")
bucket_name = parsed_url.netloc.split('.')[0]
print(f"DEBUGPRINT[2]: s3.py:13: bucket_name={bucket_name}")
object_key = parsed_url.path.lstrip('/')
print(f"DEBUGPRINT[3]: s3.py:15: object_key={object_key}")

# Create an S3 client
# s3_client = boto3.client('s3',
#                          aws_access_key_id=aws_access_key_id,
#                          aws_secret_access_key=aws_secret_access_key,
#                          region_name=aws_region)
#
# # Download the file from S3
# local_file_name = 'downloaded_file.docx'
# s3_client.download_file(bucket_name, object_key, local_file_name)
#
# print(f"File downloaded as {local_file_name}")
