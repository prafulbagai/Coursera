from django.db import models

# Create your models here.
class University(models.Model):
	name = models.CharField(max_length = 255, unique = True)
	abbr_name = models.CharField(max_length = 255, unique = True)
	description = models.CharField(max_length = 255)
	location = models.CharField(max_length = 255)
	website = models.CharField(max_length = 255)
	website_facebook = models.CharField(max_length = 255)
	website_twitter = models.CharField(max_length = 255)
	website_youtube = models.CharField(max_length = 255)
