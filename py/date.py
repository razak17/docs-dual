# generate timestamp
# eg 2022-07-03_165159_212924376
from datetime import datetime

def generate_timestamp():
    return datetime.now().strftime('%Y-%m-%d_%H%M%S_%f')

print(generate_timestamp())
name = "Bob"
print(f"Hello, {name}!")

from fastapi import HTTPException, Body, File, UploadFile, Depends
from fastapi.responses import JSONResponse
from typing import List, Any
import uuid
import json
from datetime import datetime
import traceback

@router.post("/save-one-pager-files")
async def save_one_pager_files(
    template: str = Body(default=None),
    files: List[UploadFile] = File(default=[]),
    data: List[Any] = Body(default=[]),
    jwt_token=Depends(JWTBearer())
):
    if not template and not files and not data:
        raise HTTPException(status_code=400, detail="No data with the request")

    agent_id = getAgentId(jwt_token)
    case_id = str(uuid.uuid4())
    _dir = "l" + case_id.replace("-", "") + "/one-pager-files"

    async def save_file(file, agent_id, case_id, _dir):
        file_data = {
            "agent_id": agent_id,
            "filename": file.filename,
            "case_id": case_id,
            "isUsed": True,
            "type": "file",
        }
        document_id = await mongo_manager.save_one_pager_file_async(fields=file_data)
        extension = file.filename.split(".")[-1]
        path = await s3_manager.upload_file(f"{_dir}/{document_id}.{extension}", file.file, case_id)
        return document_id, path

    async def save_text_data(_data, agent_id, case_id, _dir):
        timestamp = datetime.now().strftime('%Y-%m-%d_%H%M%S_%f')
        text_alias = f"text-{timestamp}"
        file_data = {
            "agent_id": agent_id,
            "filename": text_alias,
            "case_id": case_id,
            "isUsed": True,
            "type": "text",
        }
        json_data = json.loads(_data)
        if json_data.get("type", "").lower() == "text":
            s3_file_key = f"{_dir}/{text_alias}.txt"
            document_id = await mongo_manager.save_one_pager_file_async(fields=file_data)
            path = await s3_manager.upload_file(s3_file_key, json_data.get("text"))
            return document_id, path

    try:
        for file in files:
            document_id, path = await save_file(file, agent_id, case_id, _dir)
            updatedFields = {"document_id": document_id, "isUsed": path != "-", "s3_path": path if path != "-" else None}
            await mongo_manager.update_onepager_file_async(fields=updatedFields)

        for _data in data:
            if _data:
                document_id, path = await save_text_data(_data, agent_id, case_id, _dir)
                updatedFields = {"document_id": document_id, "isUsed": path != "-", "s3_path": path if path != "-" else None}
                await mongo_manager.update_onepager_file_async(fields=updatedFields)

        return {"message": "onepager files saved successfully", "case_id": case_id}
    except HTTPException as e:
        traceback.print_exc()
        raise e
    except Exception as e:
        traceback.print_exc()
        return JSONResponse(content={"error": str(e)}, status_code=500)
