<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="project_framwork._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 
    <style>
        .question p{
            display:inline;
         
            display:inline-grid;
        }
        .question{
            padding-left:100px;
            
            margin-left:75px;
            margin-right:75px;
            padding-top:15px;
            margin-bottom:50px;
            border-radius:30px;
            background-color:#F5F5F5;
            border:1px solid black
        }
          body{
            background-color:Cornsilk;
        }
          .Ans_count{
               background-color:Peru;
               width:60px;
               padding-left:1px;
               text-align:center;
               border:1px solid cornsilk;
               border-radius:5px;
               display:flex;
               color:cornsilk;
               
           }
           .count_value{
                background-color:LightSalmon;
               width:20px;
              border:1px solid cornsilk ;
                color:cornsilk;
               margin-left:2px;
                padding-left:5px;
              
               
               border-radius:5px;

           }
      
    </style>
    <div class="row" id="row">
    <div class="col-sm-12">
        <div class="jumbotron">
            <h1>Learn, Shared, Build!</h1>
            <h3>Each month, over 50 million developers come to Stack Overflow to learn, share their knowledge, and build their careers.</h3>
            <p class="lead">Join the world's largest developer community.</p>
        </div>
    </div>
</div>
    <br />
    <br />
   
      

    <div class="row" >
        <asp:PlaceHolder ID="PlaceHolder3" runat="server"></asp:PlaceHolder>
    </div>
   
    



</asp:Content>
