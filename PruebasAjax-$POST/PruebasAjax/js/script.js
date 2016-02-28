$(document).ready(function () {
    //$("#Form").submit(function(e) {
    //    e.preventDefault();
        
    //    var datos = {
    //        "Documento": $("#Documento").val(),
    //        "Nombre": $("#Nombre").val(),
    //        "Apellido": $("#Apellido").val(),
    //    }
    //});
    $("#submit").click(function () {
        //var datos = {
        //    "Documento": $("#Documento").val(),
        //    "Nombre": $("#Nombre").val(),
        //    "Apellido": $("#Apellido").val(),
        //};

        var datos = $("#Form").serialize();

        $.post(
            //Url donde viaja la solucitud
            'http://localhost:49247/Home/ingresarDatos',
            //Datos que se recopilan en el formulario
             datos,
            //Si es exitoso el envío se direccionara al Index
            function (data) {
                location.href = 'http://localhost:49247/Home/Index';
        });

    });
});