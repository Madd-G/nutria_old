from fastapi import APIRouter
from config.db import conn
from models.fruit_model import fruits
from models.vegetable_model import vegetables
from schemas.fruit import Fruit
from schemas.vegetable import Vegetable

route = APIRouter()


@route.get('/get-fruit')
def fetch_fruit():
    return conn.execute(fruits.select()).fetchall()


@route.get('/get-vegetable')
def fetch_vegetable():
    return conn.execute(vegetables.select()).fetchall()


@route.post('/create-fruit/')
def post_fruit(fruit: Fruit):
    return conn.execute(fruits.insert().values(name=fruit.name, category=fruit.category, description=fruit.description))


@route.post('/create-vegetable/')
def post_vegetable(vegetable: Vegetable):
    return conn.execute(
        vegetables.insert().values(name=vegetable.name, category=vegetable.category, description=vegetable.description))


@route.put('/update-fruit/{id}')
def update_fruit(id: int, fruit: Fruit):
    return conn.execute(
        fruits.update().values(name=fruit.name, category=fruit.category, description=fruit.description).where(
            fruits.c.id == id))


@route.put('/update-vegetable/{id}')
def update_vegetable(id: int, vegetable: Vegetable):
    return conn.execute(
        vegetables.update().values(name=vegetable.name, category=vegetable.category,
                                   description=vegetable.description).where(vegetables.c.id == id))


@route.delete('/delete-fruit/{id}')
def delete_fruit(id: int):
    # c = column
    return conn.execute(fruits.delete().where(fruits.c.id == id))


@route.delete('/delete-vegetable/{id}')
def delete_vegetable(id: int):
    # c = column
    return conn.execute(vegetables.delete().where(vegetables.c.id == id))
