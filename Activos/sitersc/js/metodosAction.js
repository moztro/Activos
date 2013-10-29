//Ejecuta un post del formulario mapeado a la URL
//del Action en el Controller
function save(form) {
    var url = form.attr("action");
    var formData = form.serialize();

    $.ajax({
        url: url,
        type: 'POST',
        data: formData,
        success: function (data) {
            $('#msg').html(data);
        },
        error: function () {
            $('#msg').html("Error al guardar");
        }
    });
}

function search(url, id) {

    $.ajax({
        url: url,
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (json) {
            $('#Descripcion').val(json.Descripcion);
            $('#Existencia').val(json.Existencia);
            $('#Precio').val(json.Precio);
            $('#Almacen').val(json.Almacen.Id);
        },
        error: function () {
            alert("Error " + json);
        }
    });
}

function validaCampos() {
    formulario = "Form1";
    var valido = true;
    var frmEl = document.getElementById("Form1").elements;
    for (var i = 0; i < frmEl.length; i++) {
        var obj = frmEl[i];
        if (obj.className == "cNecesario") {
            if (obj.value == "" || obj.value == 0) {
                obj.style.border = "1px dashed red";
                valido = false;
            } else
                obj.style.border = "1px solid #cccccc";
        }
    }

    if (valido == false) {
        alert("Los campos en rojo son obligatorios.");
    }
    return valido;
}

function llenar(control, url) {

    control.empty().append('<option selected="selected" value="0">--Seleccionar--</option>');
    $.ajax({
        type: 'POST',
        url: url,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            llenarControl(response, control);
        },
        failure: function (response) {
            alert(response);
        }
    });
}

function llenarEnCascada(control, controlPadre, url) {
    if (controlPadre.val() == "0") {
        control.empty().append('<option selected="selected" value="0">--Seleccionar--</option>');
    }
    else {
        control.empty().append('<option selected="selected" value="0">Cargando...</option>');
        $.ajax({
            type: 'POST',
            url: url,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                llenarControl(response, control);
            },
            failure: function (response) {
                alert(response);
            }
        });
    }
}

function llenarControl(list, control) {
    if (list.length > 0) {
        control.empty().append('<option selected="selected" value="0">--Seleccionar--</option>');
        $.each(list, function () {
            control.append($("<option></option>").val(this['Id']).html(this['Descripcion']));
        });
    }
    else {
        control.empty().append('<option selected="selected" value="0">Sin datos disponibles<option>');
    }
}

