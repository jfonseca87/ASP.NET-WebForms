$(document).ready(function () {
    $("#btnModal").click(function () {
        $(".ventana").fadeIn("slow");
    });

    $(".cerrar").click(function () {
        $(".ventana").fadeOut("fast", function () {
            $("#txtUsuario").val('');
            $("#txtPassword").val('');
            $(".error").css("display", "none");
        });
        
    });

    $("#btnIngresar").click(function () {
        var password = document.getElementById(txtPassword);
        var usuario = document.getElementById(txtUsuario);
        $.ajax({
            type: "POST",
            url: "http://localhost:49704/login.aspx/validaUsuario",
            data: '{user: "' + usuario.value +
                '", password: "' + password.value + '"}',
            contentType: "application/json; chartset=utf-8",
            dataType: "json",
        })
        .done(function (data) {
            var mensaje = data.d;
            if (mensaje != "false") {
                location.href = "index.aspx";
            } else {
                $(".error").fadeIn("slow", function () {
                    $("#txtPassword").val('');
                });
            }
        });
    });

});