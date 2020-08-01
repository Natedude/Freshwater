from freshwater.models import *

def run(db):
    #from freshwater import db
    db.create_all()
    print("init_db: tables created")
