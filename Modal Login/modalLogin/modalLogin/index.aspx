<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="modalLogin.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1> Bienvenido a HELP DESK V1.0</h1>
        <h2> <%=Session["usuario"].ToString() %></h2>
    </div>
    </form>
</body>
</html>
