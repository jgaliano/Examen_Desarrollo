from django.forms import ModelForm
from .models import Supervisor

class SupervisorForm(ModelForm):
    class Meta: 
        model = Supervisor
        fields = ['Nombre', 'Apellido', 'DPI']