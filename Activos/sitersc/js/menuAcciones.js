function marcarTodos() { $(".chkselector input:checkbox").attr('checked', true); }

function desmarcarTodos() { $(".chkselector input:checkbox").attr('checked', false);}

function validar()
{
	var seleccionado = false;
	$("#MainContent_gvTareas :checkbox").each(function() {
	if (this.checked)
		seleccionado = true;
	});
	if (seleccionado==false)
		alert("Debe seleccionar al menos un elemento.");
		
	return seleccionado;	
}