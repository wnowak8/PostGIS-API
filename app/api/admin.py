from django.contrib import admin
from .models import PointModel, LineStringModel, PolygonModel

admin.site.register(PointModel)
admin.site.register(LineStringModel)
admin.site.register(PolygonModel)
