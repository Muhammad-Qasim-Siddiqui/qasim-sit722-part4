from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
import os

# Correctly setting the DATABASE_URL with SSL requirement
SQLALCHEMY_DATABASE_URL = os.getenv(
    "DATABASE_URL",
    "postgresql://sit722postgresdb_user:3Nak5cgW51lA9rSHcJbD7eOppHPDcteJ@dpg-crt1jktds78s73eae9dg-a.oregon-postgres.render.com:5432/sit722postgresdb?sslmode=require"
)

# Creating the engine with the updated database URL and SSL mode set to 'require'
engine = create_engine(SQLALCHEMY_DATABASE_URL)

# Configuring the session maker
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

# Base class for all models
Base = declarative_base()
