﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MiPerfil.aspx.cs" Inherits="pokedex_web.MiPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .validacion{
            color: red;
            font-size: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Mi Perfil</h2>
    <div class="row">
        <div class="col-md-4">
            <div class="mb-3">
                <label class="form-label">Email</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail" />
            </div>
            <div class="mb-3">
                <label class="form-label">Nombre</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtNombre" />
                <asp:RequiredFieldValidator CssClass="validacion" ErrorMessage="El nombre es requerido" ControlToValidate="txtNombre" runat="server" />
            </div>
            <div class="mb-3">
                <label class="form-label">Apellido</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtApellido" />
                <%--<asp:RangeValidator ErrorMessage="fuera de rango" MinimumValue="0" MaximumValue="20" ControlToValidate="txtApellido" runat="server" />--%>
                <asp:RegularExpressionValidator ErrorMessage="Solo números" ControlToValidate="txtApellido" ValidationExpression="^\\d+$" runat="server" />
            </div>
            <div class="mb-3">
                <label class="form-label">Fecha de Nacimiento</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtFechaNacimiento" TextMode="Date" />
            </div>

        </div>
        <div class="col-md-4">
            <div class="mb-3">
                <label class="form-label">Imagen Perfil</label>
                <input type="file" id="txtImagen" runat="server" class="form-control" />
            </div>
            <asp:Image ID="imgNuevoPerfil" ImageUrl="https://www.palomacornejo.com/wp-content/uploads/2021/08/no-image.jpg"
                runat="server" CssClass="img-fluid mb-3" />

        </div>

    </div>
    <div class="row">
        <div class="col-md-4">
            <asp:Button Text="Guardar" CssClass="btn btn-primary" OnClick="btnGuardar_Click" ID="btnGuardar" runat="server" />
            <a href="/">Regresar</a>
        </div>
    </div>
</asp:Content>
