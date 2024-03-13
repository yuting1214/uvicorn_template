import uvicorn
from starlette.applications import Starlette
from starlette.responses import JSONResponse
from starlette.routing import Route

# Define a request handler
async def homepage(request):
    return JSONResponse({"message": "Hello, World!"})

# Create a Starlette app
app = Starlette(routes=[Route("/", homepage)])

if __name__ == "__main__":
    # Run the app using uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
