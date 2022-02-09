<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="Crud.StudentRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
   <head runat="server">
      <title></title>
      <script src="Scripts/bootstrap.min.js"></script>
      <script src="Scripts/jquery-3.4.1.min.js"></script>
      <link href="Content/bootstrap.css" rel="stylesheet" />
   </head>
   <body>
      <form id="form1" runat="server">
         <div class="container" >
            <h1><label">Student Registration Page</label></h1>
            <div  class="row">
               <div class="col-md-6">
                  <div class="form-group">
                     <label>Name</label>
                     <asp:TextBox ID="txtName" runat="server" cssClass="form-control"  >  </asp:TextBox>
                     <asp:RequiredFieldValidator ID="rqvName" ForeColor="red" runat="server" ControlToValidate="txtName" ErrorMessage="Please Enter Your Name." Display="Dynamic"></asp:RequiredFieldValidator>
                  </div>
               </div>
               <div class="col-md-6">
                  <div class="form-group">
                     <label>Email</label>
                     <asp:TextBox ID="txtEmail" runat="server" cssclass="form-control"  > </asp:TextBox>
                     <asp:RequiredFieldValidator ID="rqvEmail" ForeColor="red" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please Enter Your Email." Display="Dynamic" ></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="rgvEmail" ForeColor="red" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please Enter Your Correct Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" ></asp:RegularExpressionValidator>
                  </div>
               </div>
            </div>
            <div  class="row">
               <div class="col-md-6">
                  <div class="form-group">
                     <label>Phone No</label>
                     <asp:TextBox ID="txtPhoneNo" runat="server" cssclass="form-control"  >  </asp:TextBox>
                  </div>
               </div>
               <div class="col-md-6">
                  <div class="form-group">
                     <label>Address</label>
                     <asp:TextBox ID="txtAddress" runat="server" cssclass="form-control"  >  </asp:TextBox>
                  </div>
               </div>
            </div>
            <div  class="row">
               <div class="col-md-6">
                  <div class="form-group">
                     <label>Password</label>
                     <asp:TextBox ID="txtPassword" runat="server" cssclass="form-control"  >  </asp:TextBox>
                     <asp:RequiredFieldValidator ID="rqvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please Enter Your Password" ForeColor="Red"></asp:RequiredFieldValidator>
                  </div>
               </div>
               <div class="col-md-6">
                  <div class="form-group">
                     <label>Confirm Password</label>
                     <asp:TextBox ID="txtConfirmPassword" runat="server" cssclass="form-control"  >  </asp:TextBox>
                     <asp:RequiredFieldValidator ID="rqvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Please Enter Your Confirm Password"  Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                     <asp:CompareValidator ID="cmpConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" ErrorMessage="Password Does Not Match.Please Enter The Password Again" Display="Dynamic"  ForeColor="Red" ></asp:CompareValidator>
                  </div>
               </div>
            </div>
            <div  class="row">
               <div class="col-md-6">
                  <div class="form-group">
                     <label>Course</label>
                      <asp:DropDownList ID="ddlcourse" runat="server" CssClass="form-control">
                          <asp:ListItem Text="Angular" Value="1"></asp:ListItem>
                          <asp:ListItem Text="MVC"  Value="2"></asp:ListItem>
                          <asp:ListItem Text="REACT" Value="3"></asp:ListItem>
                      </asp:DropDownList>
                      
                  </div>
               </div>
                <div class="col-md-6">
                  <div class="form-group">
                     <label>DOB</label>
                      <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                      
                  </div>
               </div>
                  <div class="col-md-6">
                  <div class="form-group">
                     <label>DOA</label>
                      <asp:TextBox ID="txtDOA" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                      
                  </div>
               </div>
                 <div class="col-md-6">
                  <div class="form-group">
                     <label>Gender</label>
                     <asp:RadioButtonList ID="rdbGenderList" runat="server" RepeatDirection="Horizontal"  >
                         <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                         <asp:ListItem Text=" Female" Value=" Female"></asp:ListItem>
                     </asp:RadioButtonList>
                  </div>
               </div>
            </div>
              <div  class="row">
              
            </div>
            <div  class="row">
               <div class="col-md-3">
                  <div class="form-group">
                     <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSave_Click"/>
                     <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-warning" OnClick="btnCancel_Click"/>
                  </div>
               </div>
            </div>
         </div>
      </form>
   </body>
</html>