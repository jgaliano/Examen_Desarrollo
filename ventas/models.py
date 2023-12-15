from django.db import models

# Create your models here.
class Supervisor(models.Model):
    Nombre = models.CharField(max_length= 100)
    Apellido = models.CharField(max_length= 100)
    DPI = models.IntegerField()
    Telefono =models.IntegerField()
    Direccion = models.CharField(max_length= 100)

class Cliente(models.Model):
    Nombre = models.CharField(max_length= 100)
    Apellido = models.CharField(max_length= 100)
    DPI = models.IntegerField()
    Telefono =models.IntegerField()
    Direccion = models.CharField(max_length= 100)

class Producto(models.Model):
    NombreProducto = models.CharField(max_length= 100)
    DescProducto = models.CharField(max_length= 100)
    PrecioProducto = models.IntegerField()

class Vendedor(models.Model):
    Nombre = models.CharField(max_length= 100)
    Apellido = models.CharField(max_length= 100)
    DPI = models.IntegerField()
    Telefono = models.IntegerField()
    Direccion = models.CharField(max_length= 100)
    supervisor = models.ForeignKey(Supervisor, to_field='id', on_delete=models.CASCADE)

class Pedidos(models.Model):
    Fecha = models.DateTimeField(auto_now_add=True)
    Vendedor = models.ForeignKey(Vendedor, to_field='id', on_delete=models.CASCADE)
    Cliente = models.ForeignKey(Cliente, to_field='id', on_delete=models.CASCADE)
    Producto = models.ForeignKey(Producto, to_field='id', on_delete=models.CASCADE)
    Cantidad = models.IntegerField()
    Total = models.IntegerField()










