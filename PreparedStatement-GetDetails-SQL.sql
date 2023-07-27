USE LittleLemonDB;

PREPARE GetOrderDetails FROM 'SELECT OrderId, Quantity, TotalCost FROM Orders WHERE OrderID = ?';

SET @ID = 1;

EXECUTE GetOrderDetails USING @ID;