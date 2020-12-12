from connector import connector
from sql.user_queries import get_available_slots, add_slot
from sql.run_query import execute

def add_availability( username : str, start, end ):
    try:
        result = execute_query( add_slot( username, start, end ) )
    except Error as e:
        print("Could not add available user slot!")
        return "-1"
    return result

def available_times( username: str ) -> list:
    try:
        return execute( get_available_slots( username ) )
    except Error as e:
        print("Could not read available times from database Twister")
        return []

def book_interview( interviewer, interviewee, datetime ):
    pass
