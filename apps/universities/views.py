from apps.courses.models import *
from apps.universities.models import *
from apps.instructors.models import *
from django.shortcuts import render, get_object_or_404


def university(request):
	uni_obj = University.objects.all()
	ctx = {'universities' : uni_obj}
	return render(request, 'universities/university.html', ctx)	



def university_detail(request,pk):
	uni_obj = get_object_or_404(University, id=pk)
	course_list = Course.objects.filter(university = uni_obj)
	instructor_list = Instructor.objects.filter(university = uni_obj)
	ctx = {'university' : uni_obj, 'instructor_list' : instructor_list, 'course_list' : course_list}
	return render(request, 'universities/university_detail.html', ctx)