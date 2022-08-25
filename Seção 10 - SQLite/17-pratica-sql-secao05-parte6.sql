-- Retorna a data atual
SELECT 
    date();

-- Retorna a hora
SELECT
    time();

-- Retorna data e hora
SELECT
    datetime();

-- Selecionanda a data
SELECT
    strftime('%d/%m/%Y') AS 'Data';

-- Selecionando a hora
SELECT
    strftime('%H:%M:%S') AS 'Hora';

-- Selecionando data e hora
SELECT
    strftime('%d/%m/%Y %H:%M:%S') AS 'Data Hora';

-- Selecionando a data e hora local
SELECT
    datetime('now', 'localtime');

-- Selecionando a hora local
SELECT 
    time('now', 'localtime');

-- Selecionando o formato completo de data e hora
SELECT
    datetime(CURRENT_TIMESTAMP, 'localtime');