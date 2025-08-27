<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="pokedex_web.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Hola!</h1>
    <p>Llegaste al Pokedex Web, tu lugar Pokemon...</p>

    <div class="row row-cols-1 row-cols-md-3 g-4">

<%--        <% 
            foreach (dominio.Pokemon poke in ListaPokemon)
            {
        %>       
            <div class="col">
                <div class="card">
                    <img src="<%: poke.UrlImagen %>" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><%: poke.Nombre %></h5>
                        <p class="card-text"><%: poke.Descripcion %></p>
                        <a href="DetallePokemon.aspx?id=<%: poke.Id %>">Ver Detalle</a>
                    </div>
                </div>
            </div>
          <%  } %>--%>

        <asp:Repeater runat="server" id="repRepetidor">
            <ItemTemplate>
                <div class="col">
                <div class="card">
                    <img src="<%#Eval("UrlImagen") %>" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><%#Eval("Nombre") %></h5>
                        <p class="card-text"><%#Eval("Descripcion") %></p>
                        <a href="DetallePokemon.aspx?id=<%#Eval("Id") %>">Ver Detalle</a>
                        <%--<asp:button text="Ejemplo" cssclass="btn btn-primary" runat="server" id="btnEjemplo" CommandArgument='<%#Eval("Id") %>' CommandName="PokemonId" OnClick="btnEjemplo_Click"/>--%>
                    </div>
                </div>
            </div>
            </ItemTemplate>
        </asp:Repeater>

    </div>
</asp:Content>
