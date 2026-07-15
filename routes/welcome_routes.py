from flask import Blueprint

welcome_bp = Blueprint('welcome', __name__)

@welcome_bp.route('/', methods=['GET'])
def welcome():
    """Welcome endpoint that returns a greeting message.
    
    Returns:
        str: Welcome message with HTTP 200 status
    """
    return 'Hello Neurostack User', 200
