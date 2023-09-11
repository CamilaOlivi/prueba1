<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MostrarAlumno.aspx.vb" Inherits="Prueba1.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="FormView1" runat="server" DataSourceID="read" DataKeyNames="Id" AllowPaging="True">
                <EditItemTemplate>
                    Id:
                    <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel1" /><br />
                    Rut_Alumno:
                    <asp:TextBox Text='<%# Bind("Rut_Alumno") %>' runat="server" ID="Rut_AlumnoTextBox" /><br />
                    Nombre_Alumno:
                    <asp:TextBox Text='<%# Bind("Nombre_Alumno") %>' runat="server" ID="Nombre_AlumnoTextBox" /><br />
                    Apellido_Alumno:
                    <asp:TextBox Text='<%# Bind("Apellido_Alumno") %>' runat="server" ID="Apellido_AlumnoTextBox" /><br />
                    Fecha_Ingreso:
                    <asp:TextBox Text='<%# Bind("Fecha_Ingreso") %>' runat="server" ID="Fecha_IngresoTextBox" /><br />
                    Edad:
                    <asp:TextBox Text='<%# Bind("Edad") %>' runat="server" ID="EdadTextBox" /><br />
                    Telefono:
                    <asp:TextBox Text='<%# Bind("Telefono") %>' runat="server" ID="TelefonoTextBox" /><br />
                    Dirección:
                    <asp:TextBox Text='<%# Bind("Dirección") %>' runat="server" ID="DirecciónTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Actualizar" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancelar" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Rut_Alumno:
                    <asp:TextBox Text='<%# Bind("Rut_Alumno") %>' runat="server" ID="Rut_AlumnoTextBox" /><br />
                    Nombre_Alumno:
                    <asp:TextBox Text='<%# Bind("Nombre_Alumno") %>' runat="server" ID="Nombre_AlumnoTextBox" /><br />
                    Apellido_Alumno:
                    <asp:TextBox Text='<%# Bind("Apellido_Alumno") %>' runat="server" ID="Apellido_AlumnoTextBox" /><br />
                    Fecha_Ingreso:
                    <asp:TextBox Text='<%# Bind("Fecha_Ingreso") %>' runat="server" ID="Fecha_IngresoTextBox" /><br />
                    Edad:
                    <asp:TextBox Text='<%# Bind("Edad") %>' runat="server" ID="EdadTextBox" /><br />
                    Telefono:
                    <asp:TextBox Text='<%# Bind("Telefono") %>' runat="server" ID="TelefonoTextBox" /><br />
                    Dirección:
                    <asp:TextBox Text='<%# Bind("Dirección") %>' runat="server" ID="DirecciónTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Insertar" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancelar" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Id:
                    <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /><br />
                    Rut_Alumno:
                    <asp:Label Text='<%# Bind("Rut_Alumno") %>' runat="server" ID="Rut_AlumnoLabel" /><br />
                    Nombre_Alumno:
                    <asp:Label Text='<%# Bind("Nombre_Alumno") %>' runat="server" ID="Nombre_AlumnoLabel" /><br />
                    Apellido_Alumno:
                    <asp:Label Text='<%# Bind("Apellido_Alumno") %>' runat="server" ID="Apellido_AlumnoLabel" /><br />
                    Fecha_Ingreso:
                    <asp:Label Text='<%# Bind("Fecha_Ingreso") %>' runat="server" ID="Fecha_IngresoLabel" /><br />
                    Edad:
                    <asp:Label Text='<%# Bind("Edad") %>' runat="server" ID="EdadLabel" /><br />
                    Telefono:
                    <asp:Label Text='<%# Bind("Telefono") %>' runat="server" ID="TelefonoLabel" /><br />
                    Dirección:
                    <asp:Label Text='<%# Bind("Dirección") %>' runat="server" ID="DirecciónLabel" /><br />

                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource runat="server" ID="read" ConnectionString="<%$ ConnectionStrings:PruebaProgramacionConnectionString %>" SelectCommand="SELECT * FROM [Registro_Alumnos]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
