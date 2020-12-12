def get_available_slots( username : str ) -> str:
    return f"SELECT SLOT.start_time, SLOT.end_time from \
            ( USERS left outer join AVAILABLE ON AVAILABLE.user_id = USERS.user_id ) \
            left outer join SLOT on SLOT.slot_id = AVAILABLE.slot_id \
            where USERS.username = '{username}'"

