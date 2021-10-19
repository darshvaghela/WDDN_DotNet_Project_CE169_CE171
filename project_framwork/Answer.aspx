<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Answer.aspx.cs" Inherits="project_framwork.Answer1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="Content/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <title></title>
  
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
          .top-ans{
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
           .Answer{
               margin-top:30px;
               color:peru;
                margin:25px 30px 0 30px;
                padding:15px 0 3px 30px;
                background-color:FloralWhite;
              border:1px solid white;
              border-radius:15px;

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
        <div class="row" id="row" >
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        </div>
   
    <div class="row" >
    <div class="col-sm-12">
        <h1>Add Your Answer</h1>
        <form id="form1" runat="server">
           
            <div class="form-row">
                <div class="form-group col-sm-12">
                       <br />
                    <asp:TextBox class="form-control" ID="txtansname" placeholder="Enter Answer..." required="required" runat="server" autofocus="autofocus"></asp:TextBox>
                   
                    
                </div>
            </div>

           
            <br />
           
            <asp:Button ID="ansbtn" runat="server" type="submit" class="btn btn-primary" Text="Add Answer" OnClick="Ans_click" />
            <br />
            </form>

    </div>
</div>
    <div class="top-ans">
        <span>Top Answer</span>
    </div>
    <div class="row" >
        <asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>
    </div>

  
        <!--body-content-end-->
</body>
</html>
