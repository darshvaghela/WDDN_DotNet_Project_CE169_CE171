<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="project_framwork.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

body {
    background-image: url('../Images/background-img.jpg');
}

form:hover{
    opacity:0.9;
}
.textbox {
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    color: black;
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
    margin: 45px 500px;
    background-color: mistyrose;
    padding-top: 20px;
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
    <script type="text/javascript">
        function validationpassword(source, arguments) {
            arguments.Isvalid = false;
            length = arguments.value.length;
            x = arguments.value;
            if (length > 14 || length < 6) {
                arguments.Isvalid = false;
            }
            else if (/[A-z]/.test(x) && /[0-9]/.test(x) && /[a-z]/.test(x)) {
                arguments.Isvalid = true;
            }
            else {
                arguments.Isvalid = false;
            }


        }
    </script>
</head>
<body>
     <form id="form1"  runat="server">
            
             <div class="container1">
             <div class="imgcontainer" >
                <img src="Images/img_avtar.png"  alt="avtar" class="avtar"/>
            </div>
             <div style="text-align:center" class="container2">
                 <asp:TextBox ID="fname" placeholder="Full name"  class="textbox" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldfname" runat="server" ErrorMessage="Name is Required!" ControlToValidate="fname" ForeColor="Red">*</asp:RequiredFieldValidator>
                 <br />
                 <br/>
                 <asp:TextBox ID="utextbox" placeholder="Username" class="textbox" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="utextbox" ErrorMessage="Username is Requires!" ForeColor="#FF3300">*</asp:RequiredFieldValidator><br />
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="utextbox" ErrorMessage="Please Enter valid Username!" ForeColor="#FF3300" ValidationExpression="^[a-zA-Z]{5,20}$" ValidateRequestMode="Enabled" ToolTip="Username must between 5 to 20 character"></asp:RegularExpressionValidator>
                 <br />

                 <asp:TextBox ID="email" placeholder="EmailId"  class="textbox" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="EmailId is Required!" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                 <br />
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="email" ErrorMessage="Enter valid Email Id!" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                 <br />
                 <asp:TextBox ID="ptextbox" class="textbox" type="password" placeholder="Password" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ptextbox" ErrorMessage="Password is Required!" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                 <br />
                 <asp:CustomValidator ID="CustomValidator1" runat="server" OnServerValidate="customValidatepassword_servervalidate" ClientValidationFunction="validationpassword" ControlToValidate="ptextbox" ErrorMessage="Invalid Password!" ForeColor="#FF3300" ToolTip="Password must between 6 to 14 char It must have atleast one uppercase,one lower case and one nummerical."></asp:CustomValidator>
                 <br />
                 <asp:TextBox ID="confirmpsw" class="textbox" type="password" placeholder="Confirm Password" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="confirmpsw" ErrorMessage="Confirm Password is Required!" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                 <br />
                 <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="ptextbox" ControlToValidate="confirmpsw" ErrorMessage="Password must be same!" ForeColor="#FF3300"></asp:CompareValidator>
                 <br />
                 <asp:Button ID="lbtn" runat="server" class="mybtn" Text="Register"  OnClick="lbtn_Click" />
                 &nbsp;
                 <asp:Button ID="cbtn" runat="server"  class="mybtn"   Text="Cencel" />

                

                 <br /> 
             </div>
                 </div>
         </form>
</body>
</html>
