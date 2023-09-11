<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="BuscarAlumno.aspx.vb" Inherits="Prueba1.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Rut Alumno"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Buscar" />
            <asp:GridView ID="GridView1" runat="server" DataSourceID="Mostrarrut"></asp:GridView>
            <asp:SqlDataSource runat="server" ID="Mostrarrut" ConnectionString="<%$ ConnectionStrings:PruebaProgramacionConnectionString %>" SelectCommand="SELECT [Id], [Rut_Alumno], [Nombre_Alumno], [Fecha_Ingreso], [Apellido_Alumno], [Edad], [Telefono], [Dirección] FROM [Registro_Alumnos] WHERE ([Rut_Alumno] = @Rut_Alumno)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" PropertyName="Text" Name="Rut_Alumno" Type="Int32"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
