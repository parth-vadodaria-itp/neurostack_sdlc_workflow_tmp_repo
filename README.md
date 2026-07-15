# Simple Welcome Web Application

## Overview
A minimal Flask web application that displays a welcome message when accessing the home page.

## Story Details
- **Story ID:** KAN-124
- **Summary:** Develop a Simple Welcome Web Application

## Features
- Single endpoint (`GET /`) that returns "Hello Neurostack User"
- Runs on Flask development server
- Returns HTTP 200 OK response

## Requirements
- Python 3.11+
- pip (Python package manager)

## Setup Instructions

### 1. Clone the repository
```bash
git clone https://github.com/parth-vadodaria-itp/neurostack_sdlc_workflow_tmp_repo.git
cd neurostack_sdlc_workflow_tmp_repo
```

### 2. Create a virtual environment
```bash
python -m venv venv
```

### 3. Activate the virtual environment

**On Windows:**
```bash
venv\Scripts\activate
```

**On macOS/Linux:**
```bash
source venv/bin/activate
```

### 4. Install dependencies
```bash
pip install -r requirements.txt
```

### 5. Configure environment variables
Copy the example environment file:
```bash
cp .env.example .env
```

The default configuration will work for local development.

### 6. Run the application
```bash
python app.py
```

Or using Flask CLI:
```bash
flask run
```

## Usage

Once the application is running, open your browser and navigate to:
```
http://localhost:5000/
```

You should see:
```
Hello Neurostack User
```

## Testing

You can also test the endpoint using curl:
```bash
curl http://localhost:5000/
```

Expected response:
```
Hello Neurostack User
```

HTTP Status: `200 OK`

## Docker Support (Optional)

Build the Docker image:
```bash
docker build -t welcome-app .
```

Run the container:
```bash
docker run -p 5000:5000 welcome-app
```

## Project Structure
```
.
├── app.py                  # Flask application factory
├── config.py               # Configuration classes
├── requirements.txt        # Python dependencies
├── .env                    # Environment variables (not in git)
├── .env.example            # Example environment template
├── .gitignore              # Git ignore patterns
├── Dockerfile              # Docker container definition
├── .dockerignore           # Docker ignore patterns
├── README.md               # This file
└── routes/
    ├── __init__.py         # Routes package initializer
    └── welcome_routes.py   # Welcome endpoint blueprint
```

## Acceptance Criteria

✅ The application starts successfully without errors  
✅ Navigating to `http://localhost:5000/` displays "Hello Neurostack User"  
✅ The endpoint returns an HTTP 200 OK response  
✅ No additional pages or APIs are required  

## Technology Stack
- **Language:** Python 3.11
- **Framework:** Flask 3.x
- **Package Manager:** pip
- **Server:** Gunicorn (production) / Flask dev server (development)

## License
This project is part of the Neurostack SDLC workflow.