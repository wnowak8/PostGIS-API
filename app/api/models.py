from django.contrib.gis.db import models


class PointModel(models.Model):
    name = models.CharField(max_length=100)
    description = models.TextField(blank=True, null=True)
    location = models.PointField(geography=True)

    def __str__(self):
        return self.name


class LineStringModel(models.Model):
    name = models.CharField(max_length=100)
    description = models.TextField(blank=True, null=True)
    path = models.LineStringField(geography=True)

    def __str__(self):
        return self.name


class PolygonModel(models.Model):
    name = models.CharField(max_length=100)
    description = models.TextField(blank=True, null=True)
    area = models.PolygonField(geography=True)

    def __str__(self):
        return self.name
