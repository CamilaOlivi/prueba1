<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EditarAlumno.aspx.vb" Inherits="Prueba1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="Edit" AllowPaging="True" DefaultMode="Edit">
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
                    <asp:LinkButton runat="server" Text="Editar" CommandName="Edit" ID="EditButton" CausesValidation="False" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource runat="server" ID="Edit" ConnectionString="<%$ ConnectionStrings:PruebaProgramacionConnectionString %>" SelectCommand="SELECT Registro_Alumnos.* FROM Registro_Alumnos" UpdateCommand="UPDATE Registro_Alumnos SET Rut_Alumno = @Rut_Alumno, Nombre_Alumno = @Nombre_Alumno, Apellido_Alumno = @Apellido_Alumno, Fecha_Ingreso = @Fecha_Ingreso, Edad = @Edad, Telefono = @Telefono, Dirección = @Dirección WHERE (Id = @original_Id) AND (Rut_Alumno = @original_Rut_Alumno OR Rut_Alumno IS NULL AND @original_Rut_Alumno IS NULL) AND (Nombre_Alumno = @original_Nombre_Alumno OR Nombre_Alumno IS NULL AND @original_Nombre_Alumno IS NULL) AND (Apellido_Alumno = @original_Apellido_Alumno OR Apellido_Alumno IS NULL AND @original_Apellido_Alumno IS NULL) AND (Fecha_Ingreso = @original_Fecha_Ingreso OR Fecha_Ingreso IS NULL AND @original_Fecha_Ingreso IS NULL) AND (Edad = @original_Edad OR Edad IS NULL AND @original_Edad IS NULL) AND (Telefono = @original_Telefono OR Telefono IS NULL AND @original_Telefono IS NULL) AND (Dirección = @original_Dirección OR Dirección IS NULL AND @original_Dirección IS NULL)">
                <UpdateParameters>
                    <asp:Parameter Name="Rut_Alumno"></asp:Parameter>
                    <asp:Parameter Name="Nombre_Alumno"></asp:Parameter>
                    <asp:Parameter Name="Apellido_Alumno"></asp:Parameter>
                    <asp:Parameter Name="Fecha_Ingreso"></asp:Parameter>
                    <asp:Parameter Name="Edad"></asp:Parameter>
                    <asp:Parameter Name="Telefono"></asp:Parameter>
                    <asp:Parameter Name="Direcci&#243;n"></asp:Parameter>
                    <asp:Parameter Name="original_Id"></asp:Parameter>
                    <asp:Parameter Name="original_Rut_Alumno"></asp:Parameter>
                    <asp:Parameter Name="original_Nombre_Alumno"></asp:Parameter>
                    <asp:Parameter Name="original_Apellido_Alumno"></asp:Parameter>
                    <asp:Parameter Name="original_Fecha_Ingreso"></asp:Parameter>
                    <asp:Parameter Name="original_Edad"></asp:Parameter>
                    <asp:Parameter Name="original_Telefono"></asp:Parameter>
                    <asp:Parameter Name="original_Direcci&#243;n"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
