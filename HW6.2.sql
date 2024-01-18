Create Table ci
  (Id SERIAL PRIMARY key,
   Country varchar(40) not null,
   City varchar(40) not null,
   Latitude NUMERIC,
   Longitude NUMERIC,
   Altitude NUMERIC
  );

INSERT INTO ci
values
(1, 'Afghanistan',	'Kabul',	34.5166667,	69.1833344,	1808.0),
(2,	'Afghanistan',	'Kandahar',	31.6100000,	65.6999969,	1015.0),
(3,	'Afghanistan',	'Mazar-e Sharif',	36.7069444,	67.1122208,	369.0),
(4,	'Afghanistan',	'Herat',	34.3400000,	62.1899986,	927.0),
(5,	'Afghanistan',	'Jalalabad',	34.4200000,	70.4499969,	573.0),
(6,	'Afghanistan',	'Konduz',	36.7200000,	68.8600006,	394.0),
(7,	'Afghanistan',	'Ghazni',	33.5535554,	68.4268875,	2175.0);

INSERT INTO ci
VALUES
(8,	'Afghanistan',	'Nawab City',	31.5800000,	64.3600006,	775.0),
(9,	'Afghanistan',	'Gereshk',	31.8188889,	64.5647202,	844.0);

SELECT * FROM ci;

SELECT Country, City, Altitude FROM ci

  SELECT COUNT(*) AS ci,
       MIN(Latitude) AS MinLatitude,
       MAX(Longitude) AS MaxLongitude,
  from ci

CREATE VIEW cities as
SELECT Country, City, Altitude FROM ci;

SELECT * FROM ci;
