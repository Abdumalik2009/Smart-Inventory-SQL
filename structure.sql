-- Создаем таблицу товаров
CREATE TABLE Inventory (
    ItemID INT PRIMARY KEY IDENTITY(1,1),
    ItemName NVARCHAR(100) NOT NULL,
    Quantity INT DEFAULT 0,
    BasePrice DECIMAL(10, 2),
    DiscountPrice DECIMAL(10, 2) -- Здесь будет цена со скидкой
);

-- Таблица для истории изменений
CREATE TABLE PriceHistory (
    LogID INT PRIMARY KEY IDENTITY(1,1),
    ItemID INT,
    OldPrice DECIMAL(10, 2),
    NewPrice DECIMAL(10, 2),
    ChangeDate DATETIME DEFAULT GETDATE()
);
