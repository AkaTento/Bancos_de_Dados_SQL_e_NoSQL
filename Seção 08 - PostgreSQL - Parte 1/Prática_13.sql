-- Selecionando data atual
SELECT
    CURRENT_DATE AS Data_Atual;

-- Selecionando hora atual
SELECT
    CURRENT_TIME AS Hora_Atual;

-- Calculando a data futura
SELECT
    CURRENT_DATE + INTERVAL '3 DAY' AS Data_Vencimento;

-- Calculando a data futura
SELECT
    CURRENT_DATE + INTERVAL '1 MONTH' AS Data_Vencimento;

-- Calculando a data futura
SELECT
    CURRENT_DATE + INTERVAL '1 YEAR' AS Data_Vencimento;

-- Calculando a data passado
SELECT
    CURRENT_DATE - INTERVAL '3 DAY' AS Data_Vencimento;

-- Calculando a data passado
SELECT
    CURRENT_DATE - INTERVAL '1 MONTH' AS Data_Vencimento;

-- Calculando a data passado
SELECT
    CURRENT_DATE - INTERVAL '1 YEAR' AS Data_Vencimento;

-- Diferença entre datas em anos
SELECT
    DATE_PART('year', '2021-01-01'::DATE) - DATE_PART('year', '2020-12-12'::DATE) AS Em_Anos;

-- Diferença entre datas em meses
SELECT
    (DATE_PART('year', '2021-01-01'::DATE) - DATE_PART('year', '2020-12-12'::DATE)) * 12 + 
    (DATE_PART('month', '2021-01-01'::DATE) - DATE_PART('month', '2020-12-12'::DATE)) AS Em_Meses;

-- Em semanas
SELECT
    TRUNC(DATE_PART('day', '2019-01-01'::TIMESTAMP - '2011-12-22'::TIMESTAMP) / 7) AS Em_Semanas;

-- Em dias
SELECT
    DATE_PART('day', '2019-01-01'::TIMESTAMP - '2011-10-02'::TIMESTAMP) AS Em_dias;

-- Em Horas
SELECT DATE_PART('day', '2019-01-01 11:55'::TIMESTAMP - '2019-01-01 09:55'::TIMESTAMP) * 24 + 
       DATE_PART('hour', '2019-01-01 11:55'::TIMESTAMP - '2019-01-01 09:55'::TIMESTAMP) AS Em_horas;

-- Em Minutos
SELECT
    (DATE_PART('day', '2019-01-01 11:55'::TIMESTAMP - '2019-01-01 09:55'::TIMESTAMP) * 24 + 
     DATE_PART('hour', '2019-01-01 11:55'::TIMESTAMP - '2019-01-01 09:55'::TIMESTAMP)) * 60 +
     DATE_PART('minute', '2019-01-01 11:55'::TIMESTAMP - '2019-01-01 09:55'::TIMESTAMP) AS Em_minutos;

-- Em Segundos
SELECT
    ((DATE_PART('day', '2019-01-01 11:55'::TIMESTAMP - '2019-01-01 09:55'::TIMESTAMP) * 24 + 
      DATE_PART('hour', '2019-01-01 11:55'::TIMESTAMP - '2019-01-01 09:55'::TIMESTAMP)) * 60 +
      DATE_PART('minute', '2019-01-01 11:55'::TIMESTAMP - '2019-01-01 09:55'::TIMESTAMP)) * 60 +
      DATE_PART('second', '2019-01-01 11:55'::TIMESTAMP - '2019-01-01 09:55'::TIMESTAMP) AS Em_segundos;

-- Formatando data no PostgreSQL
SELECT
    TO_CHAR(CURRENT_DATE, 'dd/mm/YYYY') AS Data_Atual;

SELECT
    TO_CHAR(NOW(), 'dd/mm/YYYY HH24:MM:SS') AS Data_Hora_Atual;

-- Com inicial maiúscula
SELECT
    TO_CHAR(CURRENT_TIMESTAMP, 'Day') AS Dia_da_Semana;

-- Com short maiúscula
SELECT
    TO_CHAR(CURRENT_TIMESTAMP, 'Dy') AS Dia_da_Semana;

-- Com inicial minúscula
SELECT
    TO_CHAR(CURRENT_TIMESTAMP, 'day') AS Dia_da_Semana;

-- Com short minúscula
SELECT
    TO_CHAR(CURRENT_TIMESTAMP, 'dy') AS Dia_da_Semana;

-- Tudo maiúscula
SELECT
    TO_CHAR(CURRENT_TIMESTAMP, 'DAY') AS Dia_da_Semana;

-- Mes tudo maiúsculo
SELECT
    TO_CHAR(CURRENT_TIMESTAMP, 'MONTH') AS Mes;

-- Mes tudo minúsculo
SELECT
    TO_CHAR(CURRENT_TIMESTAMP, 'month') AS Mes;

-- Mes iniciais minúsculo
SELECT
    TO_CHAR(CURRENT_TIMESTAMP, 'mon') AS Mes;

-- Mes iniciais maiúsculo
SELECT
    TO_CHAR(CURRENT_TIMESTAMP, 'Mon') AS Mes;

-- Mostra a linguagem do sistema
SHOW
    lc_time;

-- Mudando a linguagem para português
SET 
    lc_time='pt_BR.UTF8';

-- Dia da semana
SELECT
    TO_CHAR(CURRENT_TIMESTAMP, 'TMDay') AS Dia_da_Semana;

-- Mês
SELECT 
    TO_CHAR(CURRENT_TIMESTAMP, 'TMMonth') AS Mes;

-- Extraindo partes de uma data
SELECT 
    EXTRACT(MONTH FROM CURRENT_TIMESTAMP) AS Numero_do_Mes;

SELECT 
    EXTRACT(DAY FROM CURRENT_TIMESTAMP) AS Dia_do_Mes;

SELECT 
    EXTRACT(YEAR FROM CURRENT_TIMESTAMP) AS Ano;

SELECT 
    EXTRACT(WEEK FROM CURRENT_TIMESTAMP) AS Numero_da_Semana;

-- Hora atual
SELECT 
    NOW() AS Data_hora;

-- Extraindo partes da hora
SELECT 
    EXTRACT(HOUR FROM CURRENT_TIMESTAMP) AS hora;

SELECT 
    EXTRACT(Minute FROM CURRENT_TIMESTAMP) AS Minuto;

SELECT 
    EXTRACT(Second FROM CURRENT_TIMESTAMP) AS Segundo;

SELECT
    EXTRACT(millisecond FROM CURRENT_TIMESTAMP) AS MiliSegundo;

-- Convertendo de segundos para hora
SELECT
    TO_CHAR((71741.733159 || 'seconds')::interval, 'HH24:MM:SS') AS Tempo_Total;

SELECT
    EXTRACT(EPOCH FROM CURRENT_TIMESTAMP::time) AS Em_Segundos;