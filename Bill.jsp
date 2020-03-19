<%@page language="java"%>
<html>
<style type="text/css">
button
   {
       position:absolute;
       right:100px;
       height:30px;
   }
  button:hover
  {
      background-color:white;
      color:white; 
      opacity:1.0;
      cursor: pointer;
		
  }
   input[type="text"]
   {
       width:70px; 
   }
   #cn
   {
       width:150px; 
   }
   table , th , td{
            border: 2px solid red;
            border-collapse: collapse;
   }  
</style>
<body>
<br>
<button type= "button" onClick="window.print()">PRINT</button>
<br> <br> <br> <br> <br>
<table border="1" height="70%" width="60%" align="center" name="bill">
<tr>
<td colspan="2">TAX INVOICE</td>
<td colspan="2">CASH BILL</td>
<td colspan="6" rowspan="2"><font size="5">KRISHI AGRO AGENCY</font></br>A/P-Ahamadnagar(02488)-230327,8421918118 &nbsp &nbsp &nbsp &nbsp &nbsp <strong>Customer sign:</strong><br><font size="5">GST NO:-123 </font></td>
</tr>

<tr>
<td colspan="4">Insecticide L.No:65834092<br><br><Font size="2">INSECTICIDE</font></td>
</tr>

<tr>
<td colspan="7">Customer Name:-<input type="text"name="cust"width="40" id="cn"><br><br>Party GST No :</td>
<td colspan="3">Invoice No :2345<br>Date :<input type="text"><br>Dc No :</td>
</tr>

<tr>
<td>Description</td>
<td>Batch</td>
<td>Pkg</td>
<td>Qty</td>
<td>Rate</td>
<td>Amount</td>
<td>GST %</td>
<td>C-GST</td>
<td>S-GST</td>
<td>Total</td>
</tr>
<tr>
 <td><input type="text"></td>
<td><input type="text"></td>
<td><input type="text"></td>
<td><input type="text"></td>
<td><input type="text"></td>
<td><input type="text"></td>
<td><input type="text"></td>
<td><input type="text"></td>
<td><input type="text"></td>
<td><input type="text"></td>
</tr>


<tr>
<td  rowspan="5"> </td>
<td rowspan="5"> </td>
<td rowspan="5"> </td>
<td rowspan="5"> </td>
<td rowspan="5"> </td>
<td rowspan="5"> </td>
<td rowspan="5"> </td>
<td rowspan="5"> </td>
<td rowspan="5"> </td>
<td rowspan="5"> </td>
 </tr>


 
</table>

</body>
</html>    