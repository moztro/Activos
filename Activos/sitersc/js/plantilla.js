$(document).ready(function(){
	obtenerFecha();
});

$(window).load(function() {						
	$("#pageActivity").hide();   
});

$(document).ready(function(){	
	sigueAjax();						   
});

function sigueAjax()
{
	var prm = Sys.WebForms.PageRequestManager.getInstance();
	prm.add_beginRequest(function(){
		$("#pageActivity").show();
	});
											
	prm.add_endRequest(function(){
		$("#pageActivity").fadeOut("slow");		
	});	
}

function obtenerFecha()
{
	var mydate=new Date()
	var year=mydate.getYear()
    if (year < 1000)
    year+=1900
    var day=mydate.getDay()
    var month=mydate.getMonth()
    var daym=mydate.getDate()
    if (daym<10)
       daym="0"+daym
    var dayarray=new Array("Domingo","Lunes","Martes","Miércoles","Jueves","Viernes","Sábado")
    var montharray=new Array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre")
    $("#fecha").text(dayarray[day] + ", " + daym + " de " + montharray[month] + " de " + year);
	$("#anio").text(year);
}