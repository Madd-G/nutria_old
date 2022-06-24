from sqlalchemy.sql.sqltypes import Integer, String
from sqlalchemy import Table, Column
from config.db import meta, engine

vegetables = Table('vegetables', meta,
                   Column('id', Integer, primary_key=True),
                   Column('name', String(255)),
                   Column('category', String(255)),
                   Column('description', String(255))
                   )

meta.create_all(engine)
