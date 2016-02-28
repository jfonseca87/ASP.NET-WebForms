<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="modalLogin.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/estilos.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/scripts.js"></script>
    <script type="text/javascript">
        var txtUsuario = '<%=txtUsuario.ClientID%>';
        var txtPassword = '<%=txtPassword.ClientID%>';
    </script>
</head>
<body>
    <div>
        <input type="button" id="btnModal" value="INGRESAR" />

        <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque nec tortor tempus, accumsan turpis vitae, finibus dui. Sed sit amet leo mollis, ultrices dui nec, euismod quam. Praesent vitae lacinia ipsum, ac tempor elit. Proin eu felis purus. Morbi cursus purus sem, ut egestas neque dictum ac. Sed et felis facilisis, convallis elit nec, blandit nisl. Nullam commodo velit nunc.
        </p>

        <p> Nullam ut fringilla dolor. Cras gravida nec massa ac malesuada. Quisque id finibus orci. Nam tempor orci a lectus ornare, hendrerit sodales nulla molestie. Quisque eu ornare lorem. Aliquam sagittis tempor felis, non hendrerit ligula. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In sit amet rhoncus eros. </p>

        <p> Nam dapibus vulputate massa, et tincidunt turpis gravida sed. Fusce mollis urna vitae elit auctor, quis vulputate est tincidunt. Nunc dolor augue, rhoncus nec bibendum quis, pharetra efficitur ligula. Proin id sapien ipsum. Maecenas ornare magna tristique nulla blandit faucibus. Pellentesque nibh erat, molestie quis aliquam vitae, posuere a lectus. Vivamus in lacus urna. Phasellus sed sapien urna. Morbi quis odio lectus. Suspendisse varius lacus condimentum enim hendrerit sagittis. Praesent id lectus nulla. Nunc et neque ullamcorper nisl blandit fermentum. Donec porta quam id enim pretium pulvinar. Nulla felis felis </p>

        <div class="ventana">
            <div class="form">
                <div class="cerrar">Cerrar X</div>
                <form id="form1" runat="server">
                    <h1 align="center"> HELP DESK </h1>
                    <hr />
                    <table align="center">
                        <tr>
                            <td>Usuario:</td>
                            <td> <asp:TextBox ID="txtUsuario" CssClass="textBox" runat="server" placeholder="Ingresa tu usuario"></asp:TextBox> </td>
                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td> <asp:TextBox ID="txtPassword" CssClass="textBox" runat="server" placeholder="Ingresa tu contraseña" TextMode="Password"></asp:TextBox> </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center"> <input type="button" id="btnIngresar" value="INGRESAR" /> </td>
                        </tr>
                    </table>
                    <br /><br />
                    <div class="error"> Usuario NO VALIDO! </div>
                 </form>
            </div>
        </div>
    </div>
</body>
</html>
