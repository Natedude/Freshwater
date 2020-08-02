from freshwater import app, views  # views must be loaded for flask routes
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, use_reloader=False, debug=True)
