from fastapi import FastAPI

# Create an instance of FastAPI
app = FastAPI()

# Define a route using a decorator
@app.get("/")
def read_root():
    return {"message": "Hello, FastAPI"}

# Define another route
@app.get("/items/{item_id}")
def read_item(item_id: int, q: str = None):
    return {"item_id": item_id, "q": q}
