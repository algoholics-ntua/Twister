def execute( query ):
    cursor = connector.cursor()
    cursor.execute( query )

    slots = cursor.fetchall()
    cursor.close()
    return slots
