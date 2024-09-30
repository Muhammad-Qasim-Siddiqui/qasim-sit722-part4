import os

# Updated DATABASE_URL with correct credentials and SSL requirement
DATABASE_URL = os.getenv(
    'DATABASE_URL', 
    'postgresql://sit722postgresdb_user:3Nak5cgW51lA9rSHcJbD7eOppHPDcteJ@dpg-crt1jktds78s73eae9dg-a.oregon-postgres.render.com:5432/sit722postgresdb?sslmode=require'
)
