<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Questions.aspx.cs" Inherits="project_framwork.Questions" %>

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
          .top-ans{
              margin-bottom:30px;
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
    <br />
    <br />
    <br />
   <!--body-content-->
   
        <div class="row" >
    <div class="col-sm-12">
        <h1>Create Question</h1>
        <form id="form1" runat="server">
           
            <div class="form-row">
                <div class="form-group col-sm-12">
                    <label for="txtQuestionName">Question</label>
                   
                    <br />
                    <asp:TextBox class="form-control" ID="txtquesdtionname" placeholder="Enter question" required="required" runat="server" autofocus="autofocus"></asp:TextBox>
                   
                    
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col-sm-6">
                    <label for="drpCategory">Category</label>
                    <asp:DropDownList ID="Catagoeydrp" class="form-control" required="required" runat="server">
                        <asp:ListItem>HTML</asp:ListItem>
                        <asp:ListItem>CSS</asp:ListItem>
                        <asp:ListItem>C#</asp:ListItem>
                        <asp:ListItem>C</asp:ListItem>
                        <asp:ListItem>C++</asp:ListItem>
                        <asp:ListItem>JAVA</asp:ListItem>
                        <asp:ListItem>PYTHON</asp:ListItem>
                        <asp:ListItem>JavaScript</asp:ListItem>
                        <asp:ListItem>PHP</asp:ListItem>
                        <asp:ListItem>jQuery</asp:ListItem>
                        <asp:ListItem>SQL</asp:ListItem>
                        <asp:ListItem>Oracle</asp:ListItem>
                        <asp:ListItem>Data Structure</asp:ListItem>
                         <asp:ListItem>MongoDb</asp:ListItem>
                         <asp:ListItem>Express Js</asp:ListItem>
                         <asp:ListItem>Node Js</asp:ListItem>
                    </asp:DropDownList>
                    
                   
                </div>
            </div>
           
            <br />
            <asp:Button ID="Adqbtn"  type="submit" class="btn btn-primary" runat="server" Text="Add Question" OnClick="Adqbtn_Click1"  />
            <br />

           
           
           
           
        </form>
    </div>
</div>
    
    <div class="top-ans">
        <span>Top Questions</span>
         </div>


     <div class="row" style="background-color:Cornsilk">
         <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
     </div>

    
    <!--body-content-end-->
   
</body>
</html>
