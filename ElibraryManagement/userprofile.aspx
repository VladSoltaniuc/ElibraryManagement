<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="ElibraryManagement.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <script type="text/javascript">
       $(document).ready(function () {
           $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
       });
   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/generaluser.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Your Profile</h4>
                           <span>Account Status - 
                            <asp:Label ID="Label3" runat="server" Text="Your Status"></asp:Label>
                            </span>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Date of Birth</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="DOB" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>State</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Alba" Value="Alba" />
                              <asp:ListItem Text="Arad" Value="Arad" />
                              <asp:ListItem Text="Argeș" Value="Argeș" />
                              <asp:ListItem Text="Bacău" Value="Bacău" />
                              <asp:ListItem Text="Bihor" Value="Bihor" />
                              <asp:ListItem Text="Bistrița-Năsăud" Value="Bistrița-Năsăud" />
                              <asp:ListItem Text="Botoșani" Value="Botoșani" />
                              <asp:ListItem Text="Brașov" Value="Brașov" />
                              <asp:ListItem Text="Brăila" Value="Brăila" />
                              <asp:ListItem Text="București" Value="București" />
                              <asp:ListItem Text="Buzău" Value="Buzău" />
                              <asp:ListItem Text="Caraș-Severin" Value="Caraș-Severin" />
                              <asp:ListItem Text="Călărași" Value="Călărași" />
                              <asp:ListItem Text="Cluj" Value="Cluj" />
                              <asp:ListItem Text="Constanța" Value="Constanța" />
                              <asp:ListItem Text="Covasna" Value="Covasna" />
                              <asp:ListItem Text="Dâmbovița" Value="Dâmbovița" />
                              <asp:ListItem Text="Dolj" Value="Dolj" />
                              <asp:ListItem Text="Galați" Value="Galați" />
                              <asp:ListItem Text="Giurgiu" Value="Giurgiu" />
                              <asp:ListItem Text="Gorj" Value="Gorj" />
                              <asp:ListItem Text="Harghita" Value="Harghita" />
                              <asp:ListItem Text="Hunedoara" Value="Hunedoara" />
                              <asp:ListItem Text="Ialomița" Value="Ialomița" />
                              <asp:ListItem Text="Iași" Value="Iași" />
                              <asp:ListItem Text="Ilfov" Value="Ilfov" />
                              <asp:ListItem Text="Maramureș" Value="Maramureș" />
                              <asp:ListItem Text="Mehedinți" Value="Mehedinți" />
                              <asp:ListItem Text="Mureș" Value="Mureș" />
                              <asp:ListItem Text="Neamț" Value="Neamț" />
                              <asp:ListItem Text="Olt" Value="Olt" />
                              <asp:ListItem Text="Prahova" Value="Prahova" />
                              <asp:ListItem Text="Satu_Mare" Value="Satu_Mare" />
                              <asp:ListItem Text="Sălaj" Value="Sălaj" />
                              <asp:ListItem Text="Sibiu" Value="Sibiu" />
                              <asp:ListItem Text="Suceava" Value="Suceava" />
                              <asp:ListItem Text="Teleorman" Value="Teleorman" />
                              <asp:ListItem Text="Timiș" Value="Timiș" />
                              <asp:ListItem Text="Tulcea" Value="Tulcea" />
                              <asp:ListItem Text="Vaslui" Value="Vaslui" />
                              <asp:ListItem Text="Vâlcea" Value="Vâlcea" />
                              <asp:ListItem Text="Vrancea" Value="Vrancea" />
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>City</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Pincode</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Full Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                            <asp:Label class="badge-pill badge-info" ID="Label1" runat="server" Text="Login Credentials"></asp:Label>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>User ID</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="User ID" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Old Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Old Password" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>New Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-8 mx-auto">
                        <center>
                           <div class="form-group">
                              <asp:Button class="btn btn-primary btn-block" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
                           </div>
                        </center>
                     </div>
                  </div>
               </div>
            </div>
            <a href="index.aspx"><< Back to Home</a><br><br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/books1.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Your Issued Books</h4>
                           <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="your books info"></asp:Label>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound"></asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>