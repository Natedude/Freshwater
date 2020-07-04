import os

SECRET_KEY = os.urandom (256)
UPLOAD_FOLDER= "/home/..../application/static/images" 
CLOUDSQL_USER = 'root'
CLOUDSQL_PASSWORD = 'abc123'
CLOUDSQL_DATABASE = 'testsql'
CLOUDSQL_CONNECTION_NAME = 'my-project-250617:us-central1:testsql'
LOCAL_SQLALCHEMY_DATABASE_URI = (
    'mysql+pymysql://{nam}:{pas}@34.68.91.201:3306/{dbn}').format (
    nam=CLOUDSQL_USER,
    pas=CLOUDSQL_PASSWORD,
    dbn=CLOUDSQL_DATABASE,
)

LIVE_SQLALCHEMY_DATABASE_URI = (
    'mysql+pymysql://{nam}:{pas}@localhost/{dbn}?unix_socket=/cloudsql/{con}').format (
    nam=CLOUDSQL_USER,
    pas=CLOUDSQL_PASSWORD,
    dbn=CLOUDSQL_DATABASE,
    con=CLOUDSQL_CONNECTION_NAME,
)

if os.environ.get ('GAE_INSTANCE'):
    SQLALCHEMY_DATABASE_URI = LIVE_SQLALCHEMY_DATABASE_URI
else:
    SQLALCHEMY_DATABASE_URI = LOCAL_SQLALCHEMY_DATABASE_URI



#app.config["UPLOAD_FOLDER"] =