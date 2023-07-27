Delimiter //
CREATE PROCEDURE AddBooking(IN BookingIDInput INT,
								 IN BookingDateInput DATE, 
								 IN TableNumberInput INT,
                                 IN CustomerIDInput INT,
                                 IN StaffIDInput INT)
BEGIN
         INSERT Bookings
		 VALUES(BookingIdInput,BookingDateInput,TableNumberInput,CustomerIdInput,StaffIdInput);
        
END //

Delimiter ;