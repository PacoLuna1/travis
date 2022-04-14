import pytest
from library.books.models import *

@pytest.mark.django_db
@pytest.mark.parametrize(
  'nombre, apellido',
  (
    ('Paco', 'Coelho'),
    ('Haruki', 'Murakami'),
    ('Jordi', 'Rosado'),
  )
)
def test_author_name(nombre, apellido):
  author = Author.objects.create(name=nombre, last_name=apellido) # Create a author
  print('This is my authors name: ', author.name) # print author's name
  assert author.last_name == apellido # validate last name of the author
  assert Author.objects.count() == 1
  author.delete()
  assert Author.objects.count() == 0
  
  # MONKEY PATCH: encargarse de simular el comportamiento de objeto o modificar attributos
  # simular entornos de produccion
@pytest.mark.django_db
def test_author_with_monkey(monkeypatch):
  author = Author.objects.create(name='nombre', last_name='apellido') # Create a author
  class AuthorQuerysetMock():
    def __init__(self):
      self.some_value=1
      
    def count(self):
      return 4

  def model_count_mock():
    return AuthorQuerysetMock()
  
  monkeypatch.setattr(Author.objects,'all', model_count_mock)
  assert Author.objects.all().count() == 4
  print('Haciendo el monkeypatch')
  
# @pytest.mark.django_db
# def test_author_with_monkey(monkeypatch):
# 	autor = Author.objects.create(name='Nombre', last_name='Apellido')
# 	def model_count_mock():
# 		return 4

# 	print(dir(Author.objects))
# 	print(type(Author.objects))
# 	print(type(Author.objects.all()))
# 	monkeypatch.setattr(Author.objects, 'count', model_count_mock)

# 	assert Author.objects.count() == 4
# 	print('Haciendo el monkeypatch')
