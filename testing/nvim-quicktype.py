from dataclasses import dataclass
from typing import Optional
from datetime import datetime


@dataclass
class Biopsy:
    id: Optional[int] = None
    value: Optional[str] = None
    modified_by: Optional[str] = None
    role: Optional[str] = None
    user_id: Optional[int] = None
    updated_date: Optional[datetime] = None
