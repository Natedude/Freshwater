
from freshwater import client
from flask import render_template, request, session, redirect, url_for
from ..models import Listings, Images, Messages, User
from ..models import db
import json
from random import randrange
import datetime
from pprint import pprint


def getAll(name):
    form = client.LoginForm()
    pprint(form)
    regForm = client.RegisterForm()
    #lstMessages = Messages.query(filter(Messages.fkReciever == name)).all()
    allMessages = dbTolst(Messages)
    allUsers = dbTolst(User)
    # lstMessages = Messages.query.filter_by(fkReciever=name)
    # print('______________________')
    # print(lstMessages)
    # print('______________________')
    # allmess = lstMessages.all()
    # print(type(allmess))
    # print(allmess)
    myMessages = []
    numMess = 0
    for mess in allMessages:
        if mess['fkReciever'] == name:
            for usr in allUsers:
                if mess['fkSender']  == usr['email']:
                    mess = dicMerge(mess, usr)
                    startDate=datetime.datetime(2013, 9, 20,13,00)
                    mess['timeCreated']=random_date(startDate,10)
                    myMessages.append(mess)
    return render_template("client/dashboard.html", messages=myMessages, reciever=name, numMessages=len(myMessages), form=form, regForm=regForm)

def contactLandlord(d):
    newMessage = Messages(
        fkSender = d['senderName'],
        fkListing = d['id'],
        fkReciever = d['senderEmail'],
        message = d['message'],
        unread = 0)
    db.session.add(newMessage)
    db.session.commit()
    db.session.refresh(newMessage)
    return render_template("client/login.html")


def dicMerge(dict1, dict2):
    res = {**dict1, **dict2}
    return res


def dbTolst(db): #This Function takes in a table from db and returns a list of dictionaries(each row is a dictionary, columns titles are keys ) ordered by primary id in table
    entireDb = db.query.all()
    lst = [ x.dict() for x in entireDb]#make sure db in use has working dict function within its class
    lst.sort(key=lambda x: x["id"])#Orders our list of dictionaries with id from smallest to largest
    return lst#Remember this needs to be jsonfied to pass it to html



def random_date(startDate ,l):
   current = start
   while l >= 0:
    current = current + datetime.timedelta(minutes=randrange(10))
    yield current
    l-=1
