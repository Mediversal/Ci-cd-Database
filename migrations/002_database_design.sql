CREATE TABLE foods (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100)
);

CREATE TABLE nutrition (
  id SERIAL PRIMARY KEY,
  food_id INT REFERENCES foods(id),
  calories FLOAT,
  protein FLOAT,
  carbs FLOAT,
  fat FLOAT
);

CREATE TABLE scan_logs (
  id SERIAL PRIMARY KEY,
  food_name VARCHAR(100),
  grams INT,
  scanned_at TIMESTAMP DEFAULT now()
);
