from django.urls import path
from todo.views import *

urlpatterns = [
    path('',TodoGetCreate.as_view()),
    path('<int:pk>/', TodoUpdateDelete.as_view()),
]
