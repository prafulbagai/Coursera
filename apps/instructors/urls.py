from django.conf.urls import patterns, url

urlpatterns = patterns('apps.instructors.views',
	url(r'instructors/(?P<pk>\d+)/$', 'instructor_detail', name='detail'),
)