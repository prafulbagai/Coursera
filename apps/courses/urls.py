from django.conf.urls import patterns, url

urlpatterns = patterns('apps.courses.views',
	url(r'courses/$','course_list',name='course_list'),
	url(r'course/(\w+)/$', 'course_detail', name='detail'),
)