from pydantic import BaseModel


class Vegetable(BaseModel):
    name: str
    category: str
    description: str
