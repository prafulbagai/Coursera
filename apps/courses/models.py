from django.db import models
from apps.universities.models import University
from apps.instructors.models import Instructor


class Category(models.Model):
	name = models.CharField(max_length = 255, unique = True)
	short_name = models.CharField(max_length = 255, unique = True)



class Course(models.Model):
	name = models.CharField(max_length = 255)
	short_name = models.CharField(max_length = 255)
	language = models.CharField(max_length = 255)
	about = models.TextField()
	short_description = models.TextField()
	format = models.TextField()
	syllabus = models.TextField()
	faq = models.TextField()
	recommended_background = models.TextField()
	estimated_class_workload = models.TextField()
	preview_link = models.CharField(max_length = 255)
	image_link = models.CharField(max_length = 255)
	certificate_description = models.TextField()
	certificates_ready = models.CharField(max_length = 255)
	duration_string = models.CharField(max_length = 255)
	eligible_for_certificates = models.CharField(max_length = 255)
	grading_policy_normal = models.CharField(max_length = 255)
	home_link = models.CharField(max_length = 255)
	start_date = models.DateField()
	end_date = models.DateField()
	university = models.ForeignKey(University)



class CourseInstructorMapping(models.Model):
	course = models.ForeignKey(Course)
	instructor = models.ForeignKey(Instructor)



class CourseCategoryMapping(models.Model):
	category = models.ForeignKey(Category)
	course = models.ForeignKey(Course)


class CourseSessionMapping(models.Model):
	start_date = models.DateField()
	end_date = models.DateField()
	course = models.ForeignKey(Course)