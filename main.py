from pydantic import validator, BaseModel


class Demo(BaseModel):

    name: str

    @validator("name")
    def validate_a(cls, data: str) -> str:
        return data
