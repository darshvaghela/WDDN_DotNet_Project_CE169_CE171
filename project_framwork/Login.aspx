<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="project_framwork.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
        form {
    position: -webkit-sticky;
    position: sticky;
}
body {
    background-image: url('../Images/background-img.jpg');
}

.textbox {
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    color: blue;
    display: inline-block;
    box-sizing: border-box;
    border: 1px solid red;
    border-radius: 50px;
    background-color:WhiteSmoke;
}

   

.mybtn {
    color: white;
    padding: 10px 10px;
    margin: 10px 0;
    cursor: pointer;
    width: 100px;
}

#lbtn {
    background-color: #04AA6D;
    border: 1px solid #04AA6D;
    border-radius: 50px;
}

    #lbtn:hover {
        opacity: 0.5;
    }

#cbtn {
    background-color: #dc5151;
    border: 1px solid #dc5151;
    border-radius: 50px;
}

    #cbtn:hover {
        opacity: 0.5;
    }

.imgcontainer {
    text-align: center;
    border-radius: 50%;
}

.avtar {
    width: 20%;
    border-radius: 50%;
}

.container1 {
   
    border: 1px solid OrangeRed;
    border-width: 3px;
    border-radius: 50px;
    margin: 100px 500px;
    background-color: mistyrose;
    padding-top: 25px;
    padding-bottom: 50px;
    border-spacing: 200px 100px;
    justify-content: center;
}


.container2 {
    padding: 15px;
    align-content: center;
    margin: auto;
}

.psw {
    float: left;
    padding-top: 15px;
}

#Linkbtn1:hover {
    opacity: 0.5;
}

#LinkBtn2:hover {
    opacity: 0.5;
}

    </style>
</head>
<body>
   <form id="form1"   runat="server">
             <div class="container1">
                 <div class="imgcontainer" >
                        <img src="Images/img_avtar.png"  alt="avtar" class="avtar"/>
                 </div>
                   <div style="text-align:center" class="container2">
                    <asp:TextBox ID="utextbox" placeholder="Username" class="textbox" runat="server"></asp:TextBox>
                       <br />
                    <br />
                    <asp:TextBox ID="ptextbox" class="textbox" type="password" placeholder="Password" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button ID="lbtn" runat="server" class="mybtn" PostBackUrl="~/Default.aspx" Text="Login" OnClick="lbtn_Click" />
                     &nbsp;
                    <asp:Button ID="cbtn" runat="server" class="mybtn"  Text="Cencel" />
                    <br /> 
                    <asp:LinkButton ID="Linkbtn1" runat="server">forgot Password?</asp:LinkButton>&nbsp
                    <asp:LinkButton ID="LinkBtn2" runat="server" PostBackUrl="~/Register.aspx">Register?</asp:LinkButton>
             </div>
                 </div>
         </form>
</body>
</html>
