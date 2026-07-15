# Simple Welcome Web Application

## Overview
A minimal Flask web application that displays a welcome message when accessing the home page.

## Story: KAN-124
**Summary:** Develop a Simple Welcome Web Application

**Requirements:**
- Single HTTP endpoint: `GET /`
- Returns message: "Hello Neurostack User"
- Runs on Flask development server at `http://localhost:5000/`

## Technology Stack
- **Language:** Python 3.11
- **Framework:** Flask 3.x
- **Database:** SQLite (configured but not used in this minimal app)
- **Package Manager:** pip

## Setup Instructions

### Prerequisites
- Python 3.11 or higher
- pip package manager

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/parth-vadodaria-itp/neurostack_sdlc_workflow_tmp_repo.git
   cd neurostack_sdlc_workflow_tmp_repo
   ```

2. **Create a virtual environment:**
   ```bash
   python3 -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

4. **Set up environment variables:**
   ```bash
   cp .env.example .env
   # Edit .env if needed (defaults are fine for local development)
   ```

## Running the Application

### Development Mode
```bash
flask run
```

Or using the Flask development server directly:
```bash
python -m flask run
```

The application will start on `http://localhost:5000/`

### Production Mode
```bash
gunicorn --bind 0.0.0.0:5000 "app:create_app()"
```

## Testing the Application

### Using a Web Browser
Navigate to: `http://localhost:5000/`

You should see:
```
Hello Neurostack User
```

### Using curl
```bash
curl http://localhost:5000/
```

Expected response:
```
Hello Neurostack User
```

Status code: `200 OK`

## Acceptance Criteria Verification

- ✅ The application starts successfully without errors
- ✅ Navigating to `http://localhost:5000/` displays "Hello Neurostack User"
- ✅ The endpoint returns an HTTP 200 OK response
- ✅ No additional pages or APIs are implemented

## Project Structure
```
.
├── requirements.txt       # Python dependencies
├── .env                   # Environment variables (not in git)
├── .env.example          # Environment template
├── .gitignore            # Git ignore rules
├── README.md             # This file
├── config.py             # Configuration classes
├── app.py                # Application factory
└── routes/
    └── welcome_routes.py # Welcome endpoint
```

## Environment Variables

| Variable | Description | Default |
|----------|-------------|----------|
| `FLASK_DEBUG` | Enable debug mode | `1` |
| `FLASK_APP` | Flask application entry point | `app.py` |
| `SECRET_KEY` | Secret key for sessions | `dev-secret-key-change-in-production` |
| `DATABASE_URL` | Database connection string | `sqlite:///dev.db` |
| `PORT` | Application port | `5000` |

## Development Notes

- This is a minimal implementation with no database operations
- The app uses the Flask app factory pattern for better testability
- Configuration is environment-based (Development/Production)
- No authentication or authorization is implemented

## License
Internal project for Neurostack SDLC workflow
