CREATE TRIGGER trg_ApplyBulkDiscount
ON Inventory
AFTER UPDATE
AS
BEGIN
    UPDATE Inventory
    SET DiscountPrice = i.BasePrice * 0.9  -- Добавили "i.", теперь ошибки не будет
    FROM Inventory i
    INNER JOIN inserted ins ON i.ItemID = ins.ItemID
    WHERE ins.Quantity > 100;
END;

