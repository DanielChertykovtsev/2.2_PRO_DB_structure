CREATE TABLE IF NOT EXISTS public.Clients (
    ID SERIAL PRIMARY KEY,
    Билет VARCHAR,
    ФИО VARCHAR,
    Адрес VARCHAR,
    Телефон VARCHAR,
    Дата_записи date 
); 

CREATE TABLE IF NOT EXISTS public.BookSerie (
    ID SERIAL PRIMARY KEY,
    Шифр varchar,
    Название varchar,
    Автор varchar,
    Год int,
    Объем int,
    Цена decimal,
    Количество int,
    Издательство varchar,
    Город varchar
); 

CREATE TABLE IF NOT EXISTS public.Transactions (
    ID SERIAL PRIMARY KEY,
    Client INTEGER,
    Book INTEGER,
    Выдана date,
    Возврат date,
    FOREIGN KEY (Client) REFERENCES Clients (Id) ON DELETE SET NULL,
    FOREIGN KEY (Book) REFERENCES BookSerie (Id) ON DELETE SET NULL
); 