"""Model for aircraft flight"""
from pprint import pprint as pp

class Flight:
    def __init__(self,number,aircraft):
        if not number[:2].isalpha():
            raise ValueError("No airline code {}".format(number))
        if not number[:2].isupper():
            raise ValueError("Invalid airline code {}".format(number))
        if not (number[2:].isdigit() and int(number[2:]) < 9999):
            raise ValueError("Invalid route number {}".format(number))
        self._number=number
        self._aircraft=aircraft
        rows,columns = self._aircraft.seatplan()
        """Example of nested comprehension and where _ is used to ignore element being looped"""
        self._seating = [None] + [ {letter:None for letter in columns} for _ in rows ]

    def number(self):
        return self._number

    def airline(self):
        return self._number[:2]

    def aircraft_model(self):
        return self._aircraft.model()

    def allocate_seat(self,seat,passenger):
        row,column = self._parse_seat(seat)
        if self._seating[row][column] is not None:
            raise ValueError("Seat {} already occupied".format(seat))
        self._seating[row][column] = passenger

    def reallocate_seat(self, fromSeat, toSeat):
        fromRow,fromCol = self._parse_seat(fromSeat)
        toRow,toCol = self._parse_seat(toSeat)
        if self._seating[fromRow][fromCol] is None:
            raise ValueError("Seat {} to reallocate from is empty".format(fromSeat))
        if self._seating[toRow][toCol] is not None:
            raise ValueError("Seat {} to reallocate to is not empty".format(toSeat))
        self._seating[toRow][toCol] = self._seating[fromRow][fromCol]
        self._seating[fromRow][fromCol] = None

    def _parse_seat(self,seat):
        row,column = self._aircraft.seatplan()
        if seat[-1] not in column:
            raise ValueError("Invalid seat number {}".format(seat[-1]))
        try:
            rowInt = int(seat[:-1])
        except:
            raise ValueError("Invalid seat row {}".format(seat[:-1]))
        if rowInt not in row:
            raise ValueError("Row {} not available".format(seat[:-1]))
        return rowInt,seat[-1]

    def num_seats_available(self):
        return sum(sum(1 for s in row.values() if s is None)
                    for row in self._seating if row is not None)
    
    def make_boarding_cards(self,print_card):
        for passenger,seat in sorted(self._passenger_seat()):
            print_card(passenger,seat,self.number(),self.aircraft_model())

    def _passenger_seat(self):
        row,column = self._aircraft.seatplan()
        for r in row:
            for c in column:
                if self._seating[r][c] is not None:
                    yield(self._seating[r][c],"{}{}".format(r,c))

class AircraftBase:
    def numSeats(self):
        row,column = self.seatplan()
        return len(row)*len(column)

class Aircraft(AircraftBase):
    def __init__(self,registration,model,row,column):
        self._registration = registration
        self._model = model
        self._row = row
        self._column = column

    def registration(self):
        return self._registration

    def model(self):
        return self._model

    def seatplan(self):
        return (range(1,self._row+1),"ABCDEFGHJK"[:self._column])

def make_flight():
    f = Flight("BA121",Aircraft("G-123","747",23,5))
    f.allocate_seat("2B","Shiv")
    f.allocate_seat("2A","Vignesh")
    f.reallocate_seat("2A","2D")
    f.reallocate_seat("2B","2E")
    return f

def print_console_cards(passenger,seat,flight_number,aircraft):
    output = "| Name:{0}"      \
             "  Flight:{1}"    \
             "  Seat:{2}"      \
             "  Aircraft:{3}"  \
             " |".format(passenger,flight_number,seat,aircraft)
    banner = "+"+"-"*(len(output)-2)+"+"
    border = "|"+" "*(len(output)-2)+"|"
    lines = [banner,border,output,border,banner]
    card="\n".join(lines)
    print(card)
    print()

