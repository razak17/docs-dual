import asyncio
import io
import json
import os
import re
import tempfile
import traceback
import uuid
from datetime import datetime
from typing import Any, List

import boto3
import docx
from api.logger import get_logger
from api.models.onepager import Onepager, OnepagerTemplate
from api.services.llm import LLM
from api.services.onepager_service import OnepagerService
from api.services.s3_bucket import S3Manager
from api.services.save_to_db import MongoDBManager
from fastapi import HTTPException, UploadFile
from fastapi.responses import JSONResponse
from langchain_community.document_loaders import (
    Docx2txtLoader,
    UnstructuredWordDocumentLoader,
)
from pydantic import Json

class OnepagerController:
    def __init__(self):
        super().__init__()
        self.s3_bucket = os.getenv("S3_BUCKET_NAME")
        self.aws_access_key_id = os.getenv("AWS_ACCESS_KEY_ID")
        self.aws_secret_access_key = os.getenv("AWS_SECRET_ACCESS_KEY")
        self.aws_region = os.getenv("AWS_REGION")

    # Helpers

    def extract_text_from_docx(self, docx_path: str):
        try:
            doc = docx.Document(docx_path)
            full_text = []
            for para in doc.paragraphs:
                full_text.append(para.text)
            return "\n".join(full_text)
        except Exception as e:
            print(f"An error occurred while reading the .docx file: {e}")
            return ""

    def download_and_extract_template_contents(self, template: OnepagerTemplate):
        s3_client = boto3.client(
            "s3",
            aws_access_key_id=self.aws_access_key_id,
            aws_secret_access_key=self.aws_secret_access_key,
            region_name=self.aws_region,
        )

        case_id = template.case_id
        document_id = template.document_id
        extension = template.filename.split(".")[-1]
        _dir = f"one-pager-templates/l{case_id.replace('-', '')}"
        object_key = f"{_dir}/{document_id}.{extension}"
        timestamp = datetime.now().strftime("%Y-%m-%d_%H%M%S_%f")

        download_path = f"/tmp/{timestamp}_{document_id}.{extension}"
        try:
            s3_client.download_file(self.s3_bucket, object_key, download_path)
            print(f"Downloaded {object_key} to {download_path}")
            logging.info(
                f"DEBUGPRINT[0]: onepager_controller.py:49: download_path={download_path}",
                extra={"tag": "onepager"},
            )
            text = self.extract_text_from_docx(download_path)
            print("Extracted Text:\n", text)
            logging.info(
                f"DEBUGPRINT[0]: onepager_controller.py:53: text={text}",
                extra={"tag": "onepager"},
            )
            return text
        except s3_client.exceptions.NoSuchKey:
            print("The object does not exist.")
            logging.info("The object does not exist.", extra={"tag": "onepager"})
        except s3_client.exceptions.NoSuchBucket:
            print("The bucket does not exist or is misconfigured.")
            logging.info(
                "The bucket does not exist or is misconfigured.",
                extra={"tag": "onepager"},
            )
        except Exception as e:
            print(f"An error occurred: {e}")
            logging.info(f"An error occurred: {e}", extra={"tag": "onepager"})

