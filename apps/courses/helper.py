from apps.courses.models import *

def get_course_deatils(course_list):
	get_course_deatils_list = []
	for course in course_list:
		image_link = course.image_link
		university_name = course.university.name
		university_website = course.university.website
		short_name = course.short_name
		course_name = course.name
		start_date = str(course.start_date)
		duration_string = course.duration_string
		instructor_list = CourseInstructorMapping.objects.filter(course = course)
		instructors = [[(obj.instructor.first_name + ' ' + obj.instructor.last_name) , obj.id] for obj in instructor_list]
		get_course_deatils_list.append([image_link,university_website,university_name,short_name,course_name,start_date,
										duration_string,instructors])

	return get_course_deatils_list