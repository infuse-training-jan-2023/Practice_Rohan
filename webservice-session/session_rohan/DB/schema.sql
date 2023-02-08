CREATE TABLE "items"(
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "item" TEXT NOT NULL,
    "status" TEXT NOT NULL,
    "reminder" BOOLEAN 
);

CREATE TABLE "user" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "name" VARCHAR(50) NOT NULL,
    "age" INTEGER NOT NULL,
    "gender" VARCHAR(10) NOT NULL,
    "address" VARCHAR(50) NOT NULL
);