from flask import Flask, render_template, request

# Create Flask app instance
app = Flask(__name__)

@app.route('/greet', methods=['POST'])
def greet():
    # Hardcoded user input (can be replaced with dynamic user input from request.form if needed)
    user_input = 'username'
    return f"Hello {user_input}, Welcome to this app for Docker demonstration. Please consider like and subscribe to the channel."

if __name__ == '__main__':
    # Correct indentation for app.run()
    app.run(host='0.0.0.0', port=5000)
