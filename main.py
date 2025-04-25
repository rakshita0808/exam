from fastapi import FastAPI # type: ignore
app = FastAPI()
import uvicorn # type: ignore


# @app.get("/")
# def read_root():
#     return {"Hello": "World"}

@app.get("/")
def read_root():
    return dict(name="Anuj Gupta", Location= "Dehradun")

@app.get("/{data}")
def read_root(data):
    return dict(hi = data, Location = "Dehradun")

if __name__ == "_main_":
    uvicorn.run("main:app", host = "0.0.0.0", port=80,reload=True)