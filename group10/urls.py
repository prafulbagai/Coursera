from django.conf.urls import patterns, include, url
from django.contrib import admin

admin.autodiscover()

urlpatterns = patterns('',
    url(r'^admin/', include(admin.site.urls)),
    url(r'^', include('apps.courses.urls')),
    url(r'^', include('apps.instructors.urls')),
    url(r'^', include('apps.universities.urls')),
)