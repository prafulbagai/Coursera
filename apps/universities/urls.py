from django.conf.urls import patterns, url

urlpatterns = patterns('apps.universities.views',
	url(r'university/$', 'university', name='university'),
	url(r'university/(?P<pk>\d+)/$', 'university_detail', name='university_detail'),
)