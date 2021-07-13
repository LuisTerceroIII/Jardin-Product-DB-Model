CREATE TABLE "Garment" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar(50),
  "stock" int,
  "images_id" SERIAL,
  "type_id" SERIAL,
  "size_id" SERIAL,
  "measures_id" SERIAL,
  "main_color_id" SERIAL,
  "figure_id" SERIAL,
  "main_material_id" SERIAL,
  "made_in_id" SERIAL,
  "discount_id" SERIAL,
  "style_id" SERIAL,
  "condition_id" SERIAL,
  "provider_id" SERIAL,
  "buy_price" int,
  "sell_price" int,
  "registrationDate" date,
  "comment" varchar(300)
);

CREATE TABLE "Type" (
  "id" SERIAL PRIMARY KEY,
  "type" varchar(80)
);

CREATE TABLE "Size" (
  "id" SERIAL PRIMARY KEY,
  "size" varchar(30)
);

CREATE TABLE "Measures" (
  "id" SERIAL PRIMARY KEY,
  "type_id" SERIAL,
  "head_size_id" SERIAL,
  "torso_id" SERIAL,
  "legs_id" SERIAL,
  "shoe_size_id" SERIAL,
  "ring_size_id" SERIAL
);

CREATE TABLE "Torso" (
  "id" SERIAL PRIMARY KEY,
  "neck" int,
  "shoulder" int,
  "sleeves" int,
  "chest" int
);

CREATE TABLE "Legs" (
  "id" SERIAL PRIMARY KEY,
  "waist" int,
  "hips" int,
  "inseam" int,
  "thigh" int
);

CREATE TABLE "HeadSize" (
  "id" SERIAL PRIMARY KEY,
  "circumference" int,
  "unversaleSize" varchar(10),
  "sizeUK" varchar(25),
  "sizeUSA" varchar(25)
);

CREATE TABLE "RingSize" (
  "id" SERIAL PRIMARY KEY,
  "size" int,
  "sizeMM" varchar(10)
);

CREATE TABLE "ShoeSize" (
  "id" SERIAL PRIMARY KEY,
  "ARG" varchar(15),
  "UK" varchar(15),
  "EUR" varchar(15),
  "CM" varchar(15)
);

CREATE TABLE "Images" (
  "id" SERIAL PRIMARY KEY,
  "garment_id" SERIAL,
  "image1" varchar(100),
  "image2" varchar(100),
  "image3" varchar(100),
  "image4" varchar(100),
  "image5" varchar(100),
  "image6" varchar(100)
);

CREATE TABLE "MainColor" (
  "id" SERIAL PRIMARY KEY,
  "color" varchar(50)
);

CREATE TABLE "Figure" (
  "id" SERIAL PRIMARY KEY,
  "figure" varchar(50)
);

CREATE TABLE "MainMaterial" (
  "id" SERIAL PRIMARY KEY,
  "material" varchar(50)
);

CREATE TABLE "MadeIn" (
  "id" SERIAL PRIMARY KEY,
  "country" varchar(60)
);

CREATE TABLE "Discount" (
  "id" SERIAL PRIMARY KEY,
  "discountRate" int
);

CREATE TABLE "Style" (
  "id" SERIAL PRIMARY KEY,
  "style" varchar(60)
);

CREATE TABLE "Condition" (
  "id" SERIAL PRIMARY KEY,
  "condition" varchar(50)
);

CREATE TABLE "Provider" (
  "id" SERIAL PRIMARY KEY,
  "direction" varchar(100)
);

CREATE TABLE "season" (
  "id" SERIAL PRIMARY KEY
);

ALTER TABLE "Type" ADD FOREIGN KEY ("id") REFERENCES "Measures" ("type_id");

ALTER TABLE "Torso" ADD FOREIGN KEY ("id") REFERENCES "Measures" ("torso_id");

ALTER TABLE "Legs" ADD FOREIGN KEY ("id") REFERENCES "Measures" ("legs_id");

ALTER TABLE "HeadSize" ADD FOREIGN KEY ("id") REFERENCES "Measures" ("head_size_id");

ALTER TABLE "RingSize" ADD FOREIGN KEY ("id") REFERENCES "Measures" ("ring_size_id");

ALTER TABLE "ShoeSize" ADD FOREIGN KEY ("id") REFERENCES "Measures" ("shoe_size_id");

ALTER TABLE "Garment" ADD FOREIGN KEY ("id") REFERENCES "Images" ("garment_id");

ALTER TABLE "Images" ADD FOREIGN KEY ("id") REFERENCES "Garment" ("images_id");

ALTER TABLE "Type" ADD FOREIGN KEY ("id") REFERENCES "Garment" ("type_id");

ALTER TABLE "Figure" ADD FOREIGN KEY ("id") REFERENCES "Garment" ("figure_id");

ALTER TABLE "Size" ADD FOREIGN KEY ("id") REFERENCES "Garment" ("size_id");

ALTER TABLE "MainColor" ADD FOREIGN KEY ("id") REFERENCES "Garment" ("main_color_id");

ALTER TABLE "MainMaterial" ADD FOREIGN KEY ("id") REFERENCES "Garment" ("main_material_id");

ALTER TABLE "MadeIn" ADD FOREIGN KEY ("id") REFERENCES "Garment" ("made_in_id");

ALTER TABLE "Measures" ADD FOREIGN KEY ("id") REFERENCES "Garment" ("measures_id");

ALTER TABLE "Style" ADD FOREIGN KEY ("id") REFERENCES "Garment" ("style_id");

ALTER TABLE "Condition" ADD FOREIGN KEY ("id") REFERENCES "Garment" ("condition_id");

ALTER TABLE "Discount" ADD FOREIGN KEY ("id") REFERENCES "Garment" ("discount_id");

ALTER TABLE "Provider" ADD FOREIGN KEY ("id") REFERENCES "Garment" ("provider_id");
