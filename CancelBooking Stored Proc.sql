Delimiter //
CREATE PROCEDURE CancelBooking(IN BookingIDInput INT)
								 
BEGIN
         DELETE FROM Bookings WHERE BookingID = BookingIDInput;        
END //

Delimiter ;