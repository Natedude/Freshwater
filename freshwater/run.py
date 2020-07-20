from app import app, views # views must be loaded for flask routes
if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True, port=5000)
