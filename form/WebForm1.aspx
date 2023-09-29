<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="form.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 27px;
            width: 202px;
        }
        .auto-style2 {
            width: 267px;
        }
        .auto-style3 {
            height: 27px;
            width: 267px;
        }
        .auto-style4 {
            height: 34px;
        }
        .auto-style5 {
            width: 202px;
        }
        .auto-style6 {
            height: 34px;
            width: 202px;
        }
        .auto-style7 {
            width: 166px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Registration From " Font-Bold="True" Font-Italic="True" Font-Overline="True" Font-Strikeout="False" Font-Underline="True"></asp:Label>
       
        <br />
        <br />
       
        <table style="height: 211px; width: 495px">
            <tr>
                <th class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="First Name :"></asp:Label>
                </th>
                <td class="auto-style2">
                    <asp:TextBox ID="tbfname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="tbfname" runat="server" Display="None" ErrorMessage="First Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <th class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Text="Last Name :"></asp:Label>
                </th>
                <td class="auto-style2">
                    <asp:TextBox ID="tblname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="None" ErrorMessage="Last Name is Required" ForeColor="Red" ControlToValidate="tblname"></asp:RequiredFieldValidator>
                </td>
            </tr>
                <tr>
                <th class="auto-style5">
                    <asp:Label ID="Label4" runat="server" Text="Email :"></asp:Label>
                </th>
                <td class="auto-style2">
                    <asp:TextBox ID="tbemail" runat="server" Type="email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="None" ErrorMessage="Email is Required" ForeColor="Red" ControlToValidate="tbemail"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbemail" Display="None" ErrorMessage="Follow Proper Email Format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <th class="auto-style5">
                    <asp:Label ID="Label5" runat="server" Text="Birth Date :"></asp:Label>
                </th>
                <td class="auto-style2">
                    <asp:TextBox ID="dob" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="None" ErrorMessage="Date of Birth is Required" ForeColor="Red" ControlToValidate="dob"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <th class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Text="Gender :"></asp:Label>
                </th>
                <td class="auto-style3">
                    <asp:RadioButton ID="rbmale" runat="server" GroupName="gender" Text="Male" />
                    <asp:RadioButton ID="rbfemale" runat="server" GroupName="gender" Text="Female" />
                    <asp:RadioButton ID="rbtransgender" runat="server" GroupName="gender" Text="Transgender" />
                    <br />
                </td>
            </tr>
            <tr>
                <th class="auto-style5">
                    <asp:Label ID="Label7" runat="server" Text="Nationality :"></asp:Label>
                </th>
                <td class="auto-style2">
                    <asp:CheckBox ID="cbcricket" runat="server" Text="Indian" />
                    <asp:CheckBox ID="cbswimming" runat="server" Text="British" />
                    <asp:CheckBox ID="cbreading" runat="server" Text="Other" />
                    <br />
                </td>
            </tr>
            <tr>
                <th class="auto-style5">
                    <asp:Label ID="Label8" runat="server" Text="Course :"></asp:Label>
                </th>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="19px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Bsc CS</asp:ListItem>
                        <asp:ListItem>Bsc IT</asp:ListItem>
                        <asp:ListItem>Bsc DS</asp:ListItem>
                        <asp:ListItem>Msc CS</asp:ListItem>
                        <asp:ListItem>Msc IT</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <th class="auto-style5">
                    <asp:Label ID="Label10" runat="server" Text="Mobile no :"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="tbMobile" runat="server" TextMode="Phone"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Display="None" ErrorMessage="Mobile Number is Required" ForeColor="Red" ControlToValidate="tbMobile"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbMobile" Display="None" ErrorMessage="It must contain 10 digit" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <th class="auto-style6">
                    <asp:Label ID="Label11" runat="server" Text="Password :"></asp:Label>
                </th>
                <td class="auto-style4">
                    <asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" Display="None" ErrorMessage="Password is Required" ForeColor="Red" ControlToValidate="tbPassword"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <th class="auto-style5">
                    <asp:Label ID="Label12" runat="server" Text="Confirm Password :"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="tbCofPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="tbCofPassword" Display="None" ErrorMessage="Confirm Password is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" Display="None" ErrorMessage="Password and Confirm Password must be the same" ForeColor="Red" ControlToCompare="tbPassword" ControlToValidate="tbCofPassword"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <th class="auto-style5">
                    <asp:Label ID="Label22" runat="server" Text="Profile Photo :"></asp:Label>
                </th>
                <td>
                    <asp:FileUpload ID="fuProfilePhoto" runat="server" />
                    <br />
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="fuProfilePhoto" Display="None" ErrorMessage="Photo is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <th class="auto-style5">
                <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" style="font-weight: 700" Text="Submit" />
                </th>
                <th>
                <asp:Button ID="btnreset" runat="server" style="font-weight: 700" Text="Reset" OnClick="btnreset_Click" />
                </th>
            </tr>
                
                </table>
            
               
            
                
                
          
            

            
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Error List" EnableTheming="True" ForeColor="Red" />
            
               
            
                
                
          
            

            
            </form>
    <br />
    <br />
    &nbsp;
    <br />
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
            <asp:Label ID="Label9" runat="server" Font-Size="XX-Large" Text="Student Information" Font-Bold="True" Font-Italic="True" Font-Overline="True" Font-Underline="True"></asp:Label>
    
        <br />
    <br />
    
        <table>
            <tr>
                <th class="auto-style7">
                     <asp:Label ID="Label13" runat="server" Text="First Name :"></asp:Label>
                </th>
                <td>
                    <asp:Label ID="lblfname" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <th class="auto-style7">

            <asp:Label ID="Label14" runat="server" Text="Last Name :"></asp:Label>

                </th>
                <td>

        <asp:Label ID="lbllname" runat="server"></asp:Label>

                </td>
            </tr>
            <tr>
                <th class="auto-style7">

            <asp:Label ID="Label15" runat="server" Text="Email :"></asp:Label>

                </th>
                <td>

        <asp:Label ID="lblemail" runat="server"></asp:Label>

                </td>
            </tr>
            <tr>
                <th class="auto-style7">

        <asp:Label ID="Label16" runat="server" Text="DOB :"></asp:Label>

                </th>
                <td>

        <asp:Label ID="lbldob" runat="server"></asp:Label>

                </td>
            </tr>
            <tr>
                <th class="auto-style7">

        <asp:Label ID="Label17" runat="server" Text="Gender :"></asp:Label>

                </th>
                <td>

        <asp:Label ID="lblgender" runat="server"></asp:Label>

                </td>
            </tr>
            <tr>
                <th class="auto-style7">

        <asp:Label ID="Label18" runat="server" Text="Nationality :"></asp:Label>

                </th>
                <td>

        <asp:Label ID="lblhobby" runat="server"></asp:Label>

                </td>
            </tr>
            <tr>
                <th class="auto-style7">

        <asp:Label ID="Label19" runat="server" Text="Course :"></asp:Label>

                </th>
                <td>

        <asp:Label ID="lblcity" runat="server"></asp:Label>
            
                </td>
            </tr>
            <tr>
                <th class="auto-style7">

        <asp:Label ID="Label20" runat="server" Text="Mobile No :"></asp:Label>

                </th>
                <td>

        <asp:Label ID="lblMobile" runat="server"></asp:Label>
            
                </td>
            </tr>
            <tr>
                <th class="auto-style7">

        <asp:Label ID="Label21" runat="server" Text="Profile Photo :"></asp:Label>

                </th>
                <td>

        <asp:Image ID="ProfilePhoto" runat="server"  Height="10%" Width="6%" />
            
                </td>
            </tr>
        </table>
          
</body>
</html>
