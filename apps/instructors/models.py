from django.db import models
from apps.universities.models import University

# Create your models here.
class Instructor(models.Model):
	first_name = models.CharField(max_length = 255)
	last_name = models.CharField(max_length = 255)
	middle_name = models.CharField(max_length = 255)
	details = models.TextField()
	university = models.ForeignKey(University)
