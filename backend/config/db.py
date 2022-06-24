from sqlalchemy import create_engine, MetaData

engine = create_engine('mysql+pymysql://u5325200_alamsyah:Alamsyah15.@srv49.niagahoster.com:3306/u5325200_alamsyah')
meta = MetaData()
conn = engine.connect()
