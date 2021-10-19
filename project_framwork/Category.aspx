<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="project_framwork.Categorys" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Category</title>
     <link href="Content/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style>
          body{
            background-color:Cornsilk;
        }
         
        h3{
            color:	#664d00;
        }
        .search{
            padding-top:13px;
            padding-left:50px;
        }
        #row{
         
        }
        #ula{
            
            display:flex;
            display:inline-block;
            width:275px;
            margin:15px  15px;
            
           
            text-align:center;
            align-items:center;
        }
        .category{
           
            padding:100px 90px 0 90px;
        }
       
        #li{
            line-height:150px;
            border:1px solid #dba80e;
            border-radius:30px;
            padding:0 50px;
            font-size:20px;

        }
         #Adqbtn{
            margin-left:20px;
        }
      
        .jumbotron{
            background-color:Cornsilk;
        }
          #txtansname{
             padding-top:30px;
             padding-bottom:30px;
                    
         }
          .astyle{
              display:inline-block;
          }
            .top-ans{
                margin-bottom:20px;
              margin-top:10px;
              border-top:3px solid Wheat;
              text-align:center;
              
          }
           .top-ans span{
               background-color:Peru;
               color:Cornsilk;
               width:50%;
               padding:18px 50px;
              
              font-size:15px;
              font-weight:500;
               border-radius:20px;
           }
    </style>
</head>
<body>
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
    <!--body-content-->
   
    <div class="category">
    <div class="row">
        <div class="top-ans">
        <span>Category</span>
         </div>
                <div class="col-sm-12">
                         <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                               </div>
        </div>
        </div>
    <!--body-content-end-->
</body>
</html>
