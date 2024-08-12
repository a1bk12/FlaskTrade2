from flask import Flask, jsonify, request

app = Flask(__name__)

# Mock data for demonstration purposes
mock_data = {
    "data": [
        {"id": 1, "symbol": "AAPL", "price": 150.00},
        {"id": 2, "symbol": "GOOGL", "price": 2800.00},
        {"id": 3, "symbol": "MSFT", "price": 300.00}
    ]
}

@app.route('/')
def home():
    return "Hello, World!"

@app.route('/v2/upstox', methods=['GET'])
def upstox_data():
    """
    Endpoint to provide Upstox data in JSON format.
    Example request: GET http://<your-domain>/v2/upstox
    """
    # Retrieve parameters from the request if needed
    # e.g., symbol = request.args.get('symbol')
    
    # Return the mock data as JSON
    return jsonify(mock_data)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80, debug=True)

