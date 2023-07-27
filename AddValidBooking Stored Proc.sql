Delimiter //
CREATE PROCEDURE AddValidBooking(IN BookingIDInput INT,
								 IN BookingDateInput DATE, 
								 IN TableNumberInput INT,
                                 IN CustomerIDInput INT,
                                 IN StaffIDInput INT)
BEGIN
      START TRANSACTION;
        IF EXISTS(select 1 FROM Bookings  Where Date = BookingDateInput and TableNumber = TableNumberInput) Then
			set @tableStatus = 0;
		ELSE
		   set @tableStatus = 1;
		END IF;
        
         INSERT Bookings
		 VALUES(BookingIdInput,BookingDateInput,TableNumberInput,CustomerIdInput,StaffIdInput);
       
		IF  @tablestatus = 0 THEN
			BEGIN
				ROLLBACK;
				SELECT CONCAT('Table Number ',TableNumberInput,' is already booked - booking cancelled ') as BookingStatus ;
			END;
		ELSE
			BEGIN
				COMMIT;
				SELECT CONCAT('Table Number ',TableNumberInput,' Booked Successfully ') as BookingStatus ;
			END;
		END IF;
END //

Delimiter ;