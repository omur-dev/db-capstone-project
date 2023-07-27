Delimiter //
CREATE PROCEDURE CheckBooking (IN BookingDateInput Date, IN TableNumberInput Int)
BEGIN
    set @tableStatus = '';
    if EXISTS(select 1 FROM Bookings  Where BookingDate = BookingDateInput and TableNumber = TableNumberInput) Then
	    set @tableStatus = 'not available';
	else
       set @tableStatus = 'available';
    end if;
    
    SELECT CONCAT('Table Number ',TableNumberInput,' is ', @tableStatus) as BookingStatus ;
END //

Delimiter ;
