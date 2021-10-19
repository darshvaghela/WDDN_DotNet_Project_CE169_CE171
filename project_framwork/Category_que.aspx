<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Category_que.aspx.cs" Inherits="project_framwork.Category_que" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="Content/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style>
         .search{
            padding-top:13px;
            padding-left:50px;
        }
          .question p{
            display:inline;
            padding-left:100px;
           
            display:inline-grid;
        }
        .question{
            margin-top:50px;
            margin-left:75px;
            margin-right:75px;
            padding-top:15px;
         
            border-radius:30px;
             
            background-color:#F5F5F5;
            border:1px solid black
        }
        .bor{
            
            border:1px solid groove;
            margin-bottom:50px;
        }
         body{
            background-color:Cornsilk;
        }
        #txtquesdtionname{
             padding-top:30px;
             padding-bottom:30px;
                    
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
</head>
<body>
    <form id="form1" runat="server">
       <!--header-->
        <div class="navbar navbar-inverse navbar-fixed-top" style="background-color:Peru";>
            <div class="container" >
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" runat="server" style="color:cornsilk" >Q&A</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav"  >
                        <li><a runat="server" href="~/" style="color:cornsilk">Home</a></li>
                        <li><a runat="server" href="~/About" style="color:cornsilk">About</a></li>
                        <li><a runat="server" href="~/Contact" style="color:cornsilk">Contact</a></li>
                        <li><a runat="server" href="Category.aspx" style="color:cornsilk">Catagory</a></li>
                        <li><a runat="server" href="Questions.aspx" style="color:cornsilk">Questions</a></li>
                      
                           <% if(val1) {%>  <li><a runat="server" style="color:cornsilk"  href="Login.aspx">Login</a></li>
                        <li><a runat="server" style="color:cornsilk" href="Register.aspx">SignUp</a></li> <% } else { %> <li><a runat="server" style="color:cornsilk" href="Login.aspx">Logout</a></li>  <% } %>
                      
                        
                    </ul>
                </div>
            </div>
        </div>
        <!--header/-->>

         <!--body-contend-->
     <div class="row" style="background-color:Cornsilk">
         <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
     </div>
    <!--body-content-end-->
    </form>
</body>
</html>
