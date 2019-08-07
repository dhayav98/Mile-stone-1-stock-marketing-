<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>create_new_company</title>
    <link rel="stylesheet" href="style.css">
    <style>
    *
{
padding: 0px;
margin: 0px;

}
.header
{
    width: 100%;
    height: 75px;
   line-height: 75px;
   background-color: #c53211;

}
.header-logo
{
  width:75px;
  height: 75px;
  margin-left: 20px;
}
.header-list
{
  position: fixed;
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color:#c53211;
  position: -webkit-sticky; /* Safari */
  position: sticky;
  top: 0;
}
.header-list li {
  float: left;


}

.header-list a {
  display: block;
color: white;
text-align: center;
text-decoration: none;
font-size: 20px;
}

#logout-link {
    float: right;
}

.header-title {
  font-size: 35px;
  margin-left: 50px;
  color:white;
}

.logout-link
{
  display: block;
  color: white;
  text-align: center;
  margin-right: 20px;
  text-decoration: none;
  font-size: 20px;
}


.nav-bar {
  
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color:rgb(54, 54, 54);
    position: -webkit-sticky; /* Safari */
    position: sticky;
    top: 0;
  }
  
  .nav-bar li {
    float: left;
    width:475px;
  }
  
  .nav-bar a {
    display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 20px;
  }
  
.nav-bar a:hover {
    background-color: rgb(42, 44, 44);
  }
  .nav-bar li a.active {
    background-color: lightskyblue;
    color: black;
  }

  .main
  {
      height:900px;
      width: 100%;
  }

  .india-stc
  {
      width: 49%;
      display: inline-block;
  }

  .india-stc table {
    border-collapse: collapse;
    width: 100%;
  }
  
  .india-stc  th, td {
    text-align: left; 
    padding: 8px;
  }

  .india-stc td{
      color: red;
  }

  .india-stc  tr:nth-child(even) {background-color: #f2f2f2;
  }

  .global-stc {
      width: 49%;
      display: inline-block;
  }

  .global-stc table {
    border-collapse: collapse;
    width: 100%;
  }
  
  .global-stc  th, td {
    text-align: left; 
    padding: 8px;
  }

  .global-stc td{
      color:green;
  }

  .global-stc  tr:nth-child(even) {
    background-color: #f2f2f2;
  }
  .bodystyle
  {
    background-color: lightgray;
  }
  .footer
{
  font-size: 20px;
  width: 100%;
  height: 40px;
  margin: 0px;
  bottom: 0px;
  background-color: #c53211;
  padding-bottom: 15px;
  position: fixed;
  color: white; 
}

.file-upload
{
text-align: center;

}
#upload-table
{
  border: 1px solid black;
  border-collapse: collapse;
  width:1000px;
}

#upload-row {
  border: 1px solid black;
  border-collapse: collapse;
}

#upload-data {
  border: 1px solid black;
  border-collapse: collapse;
  text-align: center;
}
#form-upload
{
  margin-left:475px;
  text-align: center;
}

#form-summary {
  margin-left:555px;
  text-align: center;
}

#summary-table {
  width:800px;
}

#add-button {
  text-decoration: none;
  display: inline-block;
  padding: 8px 16px;
}

.next {
  
  color:white;
  background-color:#c53211 ;

}

.round {
  border-radius: 50%;
}


.container.body-content {
  padding-bottom: 110px;
  height: 800px; /* Force height on body */
}


input[type=text], select, input[type=date],input[type=number] {
  width: 100%;
  padding: 5px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}


input[type=button] {
  background-color: #c53211; 
  border: none;
  color: white;
  padding: 8px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

input[type=button]:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}


input[type=submit] {
  background-color: #c53211; 
  border: none;
  color: white;
  padding: 8px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

input[type=submit]:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}

table,td{
  
  align-self: center;
  text-align: center;
}

.paragraph-content {
  margin: 14px 20px;
}
    </style>
</head>

<body class="bodystyle">

    <header class="header">
        <ul class="header-list">
            <li><img class="header-logo" src="images/stock-logo.png"></li>
            <li><span class="header-title">STOCK MARKET</span></li>
            <li id="logout-link"><a class="logout-link" href="#">Logout</a></li>

        </ul>
    </header>
    <div class="main">
        <ul class="nav-bar">
           <li> <a href="import_stock_page.jsp">Import Data</a></li>
            <li><a href="list_company_details.jsp">Manage Company</a></li>
            <li><a href="list_stock_exchange.jsp">Manage Exchange</a></li>
            <li><a href="IPO.jsp">Update IPO details</a></li>

        </ul>

        <h1 style="text-align: center;line-height: 200px">CREATE NEW COMPANY</h1>
        <div class="file-upload">
            <form id="form-summary" action="insertcompany">
                <table id="summary-table">
                    <tr>
                        <td><label for="company_name">Company Name</label></td>
                        <td><input type="text" name="name" id="company_name" placeholder="Company Name"></td>
                    </tr>
                    <tr>
                        <td><label for="ceo_name">CEO Names & Board Members</label></td>
                        <td><input type="text" name="coe_name_board_members" id="ceo_name" placeholder="CEO Names & Board Members"></td>
                    </tr>
                    </tr>
                    <td><label for="turn_over">Turn Over</label></td>
                    <td><input type="text" name="turnover" id="turn_over" placeholder="Turn Over"></td>
                    </tr>
                    <tr>
                    <td><label for="brief">Brief Description</label></td>
                    <td><input type="text" name="brief_desc" id="brief" placeholder="Brief"></td>
                    </tr>
                    <tr>
                    <td><label for="ipo_date">IPO Date</label></td>
                    <td><input type="date" name="ipo_date" id="ipo_date"></td>
                    </tr>
                    <tr>
                        <td></td>
                      <td><input class="save_button" type="submit" value="Save"></td>  
                    </tr>
                </table>
            </form>
        </div>






    </div>
    <footer class="footer">
        <p style="line-height: 60px;padding: 1px 16px;">&copy; 2019 StockManagement.com</p>
    </footer>
</body>

</html>-