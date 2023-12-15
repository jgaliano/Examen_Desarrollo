from http.client import HTTPResponse
from django.shortcuts import get_object_or_404, render, redirect
from django.http import HttpResponse, HttpResponseRedirect
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth.models import User
from django.contrib.auth import login, logout, authenticate
from django.http import HttpResponse
from django.db import IntegrityError
from .models import Supervisor, Producto, Cliente, Vendedor, Pedidos
from django.urls import reverse
from django.contrib import messages


# def index1 (request):
#     db_data = Supervisor.objects.all()
#     content = {
#         "db_data":db_data[::-1],
#         "update": None
#     }
#     return render(request, "supervisor.html", content)

# Create your views here.
def home(request):
    return render(request, 'home.html')

def cliente(request):

    

    if request.method == 'GET':
            return render(request, 'clientes.html')
    else:        
        try:
            s_nombre = request.POST["nombre"]
            s_apellido = request.POST["apellido"]
            s_dpi = request.POST["dpi"]
            s_telefono = request.POST["telefono"]
            s_direccion = request.POST["direccion"]
            if s_nombre == "" or s_apellido == "" or s_dpi == "" or s_telefono == "" or s_direccion == "":
                raise ValueError("El texto no puede estar en vacio.")
            db_data = Cliente(Nombre=s_nombre, Apellido=s_apellido, DPI=s_dpi, Telefono=s_telefono, Direccion=s_direccion)
            db_data.save()
            return HttpResponseRedirect(reverse("cliente")) 
        except ValueError as err:
            print(err)
            return HttpResponseRedirect(reverse("cliente")) 

def pedidos(request):

    productos = Producto.objects.all()
    clientes = Cliente.objects.all()
    vendedores = Vendedor.objects.all()
    if request.method == 'GET':
            return render(request, 'pedidos.html',{'productos': productos, 'clientes': clientes, 'vendedores': vendedores})
    else:        
        try:
            p_producto = request.POST["producto"]
            p_cantidad = int(request.POST["cantidad"])
            p_cliente = request.POST["cliente"]
            p_vendedor = request.POST["vendedor"]

            producto = get_object_or_404(Producto, id=p_producto)
            p_total = producto.PrecioProducto * p_cantidad

            if p_producto == "" or p_cantidad == "" or p_cliente == "" or p_vendedor == "":
                raise ValueError("El texto no puede estar en vacio.")
            db_data = Pedidos(Producto_id=p_producto, Cantidad=p_cantidad, Cliente_id=p_cliente, Vendedor_id=p_vendedor, Total=p_total)
            db_data.save()
            return HttpResponseRedirect(reverse("pedidos"))
        except ValueError as err:
            return HttpResponseRedirect(reverse("pedidos")) 

def productos(request):
    if request.method == 'GET':
            return render(request, 'productos.html')
    else:        
        try:
            p_producto = request.POST["producto"]
            p_desc = request.POST["desc"]
            p_precio = request.POST["precio"]
            if p_producto == "" or p_desc == "" or p_precio == "":
                raise ValueError("El texto no puede estar en vacio.")
            db_data = Producto(NombreProducto=p_producto, DescProducto=p_desc, PrecioProducto=p_precio)
            db_data.save()
            return HttpResponseRedirect(reverse("productos")) 
        except ValueError as err:
            print(err)
            return HttpResponseRedirect(reverse("productos")) 


def supervisor(request):
    if request.method == 'GET':
            return render(request, 'supervisor.html')
    else:        
        try:
            s_nombre = request.POST["nombre"]
            s_apellido = request.POST["apellido"]
            s_dpi = request.POST["dpi"]
            s_telefono = request.POST["telefono"]
            s_direccion = request.POST["direccion"]
            if s_nombre == "" or s_apellido == "" or s_dpi == "" or s_telefono == "" or s_direccion == "":
                raise ValueError("El texto no puede estar en vacio.")
            db_data = Supervisor(Nombre=s_nombre, Apellido=s_apellido, DPI=s_dpi, Telefono=s_telefono, Direccion=s_direccion)
            db_data.save()
            return HttpResponseRedirect(reverse("supervisor")) 
        except ValueError as err:
            print(err)
            return HttpResponseRedirect(reverse("supervisor")) 
    

def vendedor(request):

    supervisores = Supervisor.objects.all()
    if request.method == 'GET':
            return render(request, 'vendedor.html', {'supervisores': supervisores})
    else:        
        try:
            s_nombre = request.POST["nombre"]
            s_apellido = request.POST["apellido"]
            s_dpi = request.POST["dpi"]
            s_telefono = request.POST["telefono"]
            s_direccion = request.POST["direccion"]
            s_supervisor = request.POST["supervisor"]
            if s_nombre == "" or s_apellido == "" or s_dpi == "" or s_telefono == "" or s_direccion == "" or s_supervisor == "":
                raise ValueError("El texto no puede estar en vacio.")
            db_data = Vendedor(Nombre=s_nombre, Apellido=s_apellido, DPI=s_dpi, Telefono=s_telefono, Direccion=s_direccion, supervisor_id=s_supervisor)
            db_data.save()
            return HttpResponseRedirect(reverse("vendedor"))
        except ValueError as err:
            return HttpResponseRedirect(reverse("vendedor")) 



