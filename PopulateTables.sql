CREATE ROLE shopuser WITH LOGIN PASSWORD '1234';

CREATE TABLE IF NOT EXISTS Products (
  id BIGSERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT,
  price REAL,
  icon_path TEXT
);

ALTER TABLE Products OWNER TO shopuser;
GRANT ALL PRIVILEGES ON TABLE Products TO shopuser;

INSERT INTO Products (name, description, price, icon_path) VALUES
  ('Кроссовки Runner X', 'Мужские кроссовки спортивные', 7199.20, '/Images/runnerX.webp'),
  ('Куртка Alpine Pro', 'Куртка водоотталкивающая, разрывостойкая', 10360.00, '/Images/AlpinePro.webp'),
  ('Футболка Basic Tee', 'Хлопковая футболка, 100% хлопок', 1592.00, '/Images/BasicTee.jpg'),
  ('Ботинки TrailMaster', 'Треккинговые ботинки TrailMaster, мембрана, рифленая подошва', 11120.00, '/Images/TrailMaster.jpg'),
  ('Джинсы Urban Fit', 'Узкие джинсы Urban Fit, эластичный деним', 4720.00, '/Images/UrbanFit.jpg'),
  ('Кроссовки CityWalk', 'Городские кроссовки CityWalk, стильный дизайн', 5940.00, '/Images/CityWalk.jpg'),
  ('Пуховик NorthShield', 'Тёплый пуховик NorthShield, пух/перо', 15999.20, '/Images/NorthShield.jpg'),
  ('Свитер CozyWool', 'Свитер 50% шерсть, мягкий', 3960.00, '/Images/CozyWool.jpg'),
  ('Кроссовки SprintPro', 'Лёгкие беговые кроссовки, c амортизацией', 7580.00, '/Images/SprintPro.jpg');
select * from Products;