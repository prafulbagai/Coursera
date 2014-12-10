from apps.courses.models import *
from apps.instructors.models import *
from django.shortcuts import render, get_object_or_404


def instructor_detail(request,pk):
	instructor_obj = get_object_or_404(Instructor, id=pk)
	course_list = CourseInstructorMapping.objects.filter(instructor = instructor_obj)
	ctx = {'instructor' : instructor_obj, 'course_list' : course_list}
	return render(request, 'instructors/instructors.html', ctx)	