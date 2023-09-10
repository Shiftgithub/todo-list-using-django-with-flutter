from django.db import models


class Todo(models.Model):
    title = models.CharField(max_length=255)
    description = models.CharField(max_length=1000)
    isDone = models.BooleanField(default=False)
    date = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.title
