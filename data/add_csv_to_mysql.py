import mysql.connector
import csv
import random

# Connect to MySQL
mydb = mysql.connector.connect(host="localhost", user="root", passwd="pass", database="usm")
mycursor = mydb.cursor()

"""
column names
id, genero, descripcion, ejemplares_disponibles, ejemplares_totales, publico, duracion, precio, reparto, calificacion, veces_rentada, calificacion_usmtomatoes, imagen

"""

#create table with varchar size 2000
mycursor.execute("CREATE TABLE peliculas (id INT AUTO_INCREMENT PRIMARY KEY, titulo VARCHAR(2000), genero VARCHAR(2000), descripcion VARCHAR(2000), ejemplares_disponibles INT, ejemplares_totales INT, publico VARCHAR(2000), duracion VARCHAR(2000), precio INT, reparto VARCHAR(2000), calificacion INT, veces_rentada INT, calificacion_usmtomatoes INT, imagen VARCHAR(2000))")

# Open CSV file
with open('data\MovieGenre.csv', 'r') as f:
    # Read CSV file
    reader = csv.reader(f)
    # Skip header
    next(reader)
    # Iterate over rows
    for row in reader:
        # Insert row into MySQL
        mycursor.execute("INSERT INTO usm (titulo, genero, descripcion, ejemplares_disponibles, ejemplares_totales, publico, duracion, precio, reparto, calificacion, veces_rentada, calificacion_usmtomatoes, imagen) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", row)