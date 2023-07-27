Delimiter //
CREATE PROCEDURE UpdateBooking(IN BookingIDInput INT,
								 IN BookingDateInput DATE)
								 
BEGIN
         UPDATE Bookings
		 SET Date = BookingDateInput WHERE BookingID = BookingIDInput;        
END //

Delimiter ;