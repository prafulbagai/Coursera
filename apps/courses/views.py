from apps.courses.models import *
from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse
from django.views.decorators.csrf import csrf_exempt
import json
from apps.courses import helper

@csrf_exempt
def course_list(request):
	if request.is_ajax():
		data = request.POST
		if data['filter'] == 'course':
			course_name = data['search_val']
			course_list = Course.objects.filter(name = course_name)			
			course_details = helper.get_course_deatils(course_list)
			return HttpResponse(json.dumps(course_details), content_type = "application/json")

		elif data['filter'] == 'category':
			category_list = data.getlist('search_val[]')
			if category_list == []:
				course_list = Course.objects.all()
			else:
				course_list = CourseCategoryMapping.objects.filter(category__name__in = category_list).values_list('course',flat = True).distinct()	
				course_list = [Course.objects.get(id = id) for id in course_list]
			course_details = helper.get_course_deatils(course_list)
			return HttpResponse(json.dumps(course_details), content_type = "application/json")

		elif data['filter'] == 'language':
			language_list = data.getlist('search_val[]')
			if language_list == []:
				course_list = Course.objects.all()
			else:
				course_list = Course.objects.filter(language__in = language_list).values_list('id',flat = True).distinct()
				course_list = [Course.objects.get(id = id) for id in course_list]
			course_details = helper.get_course_deatils(course_list)
			return HttpResponse(json.dumps(course_details), content_type = "application/json")


	course_instructor_dict = {}
	course_list = Course.objects.all()
	for course in course_list:
		instructor = CourseInstructorMapping.objects.filter(course = course)
		course_instructor_dict.update({course : instructor})

	language_dict = {}
	language_list = Course.objects.values_list('language',flat = True).distinct()
	for language in language_list:
		count = Course.objects.filter(language = language).count()
		language_dict.update({language : count})
	
	category_dict = {}
	category_list = Category.objects.all()
	for category in category_list:
		count = CourseCategoryMapping.objects.filter(category = category).count()
		category_dict.update({category.name : count})

	course_list = course_list.values_list('name',flat = True)
	course_list = [str(course) for course in course_list]
	ctx = {
			'course_instructor_dict' : course_instructor_dict, 'category_dict' : category_dict, 
			'language_dict' : language_dict, 'course_list' : course_list
		  }
	return render(request, 'courses/courses.html', ctx)



def course_detail(request,course_name):
	course_obj = get_object_or_404(Course, short_name=course_name)
	instructor_list = CourseInstructorMapping.objects.filter(course = course_obj)
	category_list = CourseCategoryMapping.objects.filter(course = course_obj)
	session_list = CourseSessionMapping.objects.filter(course = course_obj)

	ctx = {'course' : course_obj, 'instructor_list' : instructor_list, 'category_list' : category_list, 'session_list' : session_list}
	return render(request, 'courses/course_details.html', ctx)	