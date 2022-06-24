from pydantic import BaseModel


class Fruit(BaseModel):
    name: str
    category: str
    description: str
