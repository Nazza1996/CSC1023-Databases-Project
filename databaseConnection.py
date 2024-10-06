import mysql.connector;
from prettytable import PrettyTable

HOST = "#######"
USER = "#######"
PASSWORD = "#######"
DATABASE = "#######"
TABLE_NAME = "jobSeekers"
VIEW_NAME = "employerHireRejectionStats"

def connectToDatabase():
    global connectionError 
    connectionError = False

    try:
        global db
        db = mysql.connector.connect(
            host = HOST,
            user = USER,
            password = PASSWORD,
            database = DATABASE
        )
    except:
        connectionError = True

    global cursor
    cursor = db.cursor()

def executeCommandVal(sql, val):
    cursor.execute(sql, val)

def executeCommand(command):
    cursor.execute(command)
    return cursor.fetchall()

def getColumnNames(name):
    result = executeCommand("SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = '"+ name +"' ORDER BY ORDINAL_POSITION")
    columnNames = []
    for x in result:
        for i in x:
            columnNames.append(i)
    return columnNames

def listTables():
    result = executeCommand("SELECT table_name FROM information_schema.tables WHERE table_type='BASE TABLE' AND table_schema = 'nwatkins02'")
    tables = []
    for x in result:
        for i in x:
            tables.append(i)
    counter = 0
    tables.sort()
    for table in tables:
        counter += 1
        print(str(counter) + ". " + table)

def addRecord():
    print("Adding to " + TABLE_NAME)
    forename = input("\nForename: ")
    surname = input("Surname: ")
    dob = input("DOB: ")
    email = input("Email Address: ")
    phoneNo = input("Phone Number: ")
    address = input("Address: ")
    city = input("City: ")
    county = input("County: ")
    postcode = input("Postcode: ")
    cvFile = input("CV File: ")

    val = (forename, surname, dob, email, phoneNo, address, city, county, postcode, cvFile)
    
    error = False
    try:
        executeCommandVal("INSERT INTO jobSeekers (forename, surname, dob, email, phoneNo, address, city, county, postcode, cvFile) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", val)
    except:
        print("Error. Could not create record.")
        error = True
    
    if error == False:
        db.commit()
        print("Record Inserted")

        columnNames = getColumnNames(TABLE_NAME)
        records = executeCommand("SELECT * FROM " + TABLE_NAME)

        table = PrettyTable()
        table.field_names = columnNames
        table.add_rows(records)
        print(table)

def viewTable():
    columnNames = getColumnNames(VIEW_NAME)
    records = executeCommand("SELECT * FROM " + VIEW_NAME)

    table = PrettyTable()
    table.field_names = columnNames
    table.add_rows(records)
    print(table)
    print()

connectToDatabase()

finished = False

while finished == False:
    print("Welcome!\n")
    print("1. Add a record to jobSeekers")
    print("2. View employer hire rejection stats")
    print("3. Exit\n")
    choice = input("Select an option: ")

    if choice == "1":
        addRecord()
    elif choice == "2":
        viewTable() 
    elif choice == "3":
        finished = True