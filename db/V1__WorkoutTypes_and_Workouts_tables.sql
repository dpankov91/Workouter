CREATE TABLE Wourkouts(
	Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Distance FLOAT NOT NULL,
	TypeId INT
)

CREATE TABLE WorkoutTypes(
	Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Name VARCHAR(100) NOT NULL
)