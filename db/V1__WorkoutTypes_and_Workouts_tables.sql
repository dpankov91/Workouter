CREATE TABLE Wourkouts(
	Id INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	Distance FLOAT NOT NULL,
	TypeId INT
)

CREATE TABLE WorkoutTypes(
	Id INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	Name VARCHAR(100) NOT NULL
)