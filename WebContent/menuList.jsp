<html>
	<head>
		<title></title>
		<link href="css/style.css" rel="stylesheet" media="screen"/>
		<style>
			.highlight {
			    background-color: rgb(255,0,0);
			}
		</style>
		<script type="text/javascript">
			function addNew(){
 				document.userForm.action = "createMenu.jsp";
 				document.userForm.target="main";
 				document.userForm.submit();
			}

			window.onload = function() {
			  var rowCount = $('#data >tbody >tr').length;
			  $("#maxrows").val(rowCount);

			    var $tbody = $("#data tbody").on('click', 'tr',  function() {
			            highlight($(this));
			    });


			    $('#goto_first').click(function() {
			        var $first = $tbody.find('tr').first();
			            highlight($first);
			    });

			$('#goto_prev').click(gotoPrevious);

			$('#goto_next').click(gotoNext);

			    $('#goto_last').click(function() {
			        var $last = $tbody.find('tr').last();
			            highlight($last);
			    });

			    $('#goto_row').click(function() {

			        var $row = prompt("Enter row number")

			        highlight($("#data tr").eq($row));

			    });

			    $('#remove_row').click(function() {

			        var $row = $tbody.find('.highlight')

			        $row.remove();

			        renumberRows()

			    });




			function gotoNext(){
			    var $next = $tbody.find('.highlight').next();
			        highlight($next);
			}

			function gotoPrevious () {
			    var $prev = $tbody.find('.highlight').prev();
			        highlight($prev);
			}





			$(document).keydown(function (e) {

			  if ( $tbody.find('.highlight').length ) {
			  
			    if (e.which == 40) {//down arrow
			        gotoNext();
			    }

			      else if (e.which == 38) {//up arrow
			        gotoPrevious();
			    }
			  }

			 });


			    function highlight($row) {
			            if ($row.length) {
			                $tbody.children().removeClass("highlight");
			                $row.addClass('highlight');
			                $("#rownum").val($row[0].rowIndex);
			            }
			    }

			    function renumberRows() {
			        $('#data tr').each(function(index, el){
			            $(this).children('td').first().text(index++);
			        });
			    }

			}	
			</script>
	</head>
	<body bgcolor="#FFF8DC">
  		<form name="userForm" action="">
  		<table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
  			<tr>
  				<td>
					 <table border="0" cellspacing="0" cellpadding="5" width="100%" align="center">
					 	<tr valign="top">
					 		<td width="50%" class="TD_HEADER_BAND" align="left" style="padding: 5px">
					 			Menu Management
					 		</td>
					 	</tr>
					</table>  
				</td>
				</tr>
				<tr style="line-height:10px;">
					<td>&nbsp;</td>
				</tr>	
				<%-- Search Table --%>
				<tr>
					<td>		
						 <table width="50%" border="0" cellspacing="1" cellpadding="0" align="left" class="TBL_SEARCH">
						 	<tr>
						 		<td width="20%" align="left" class="TD_LBL" align="left" colspan="3" style="background-color: #FFF8DC;">
									<input type="radio" name="statusType" value="1" checked="checked"/><font style="color: blue; font-weight: bold;">All</font>
									<input type="radio" name="statusType" value="A"/><font style="color: green; font-weight: bold;">Active</font>
									<input type="radio" name="statusType" value="I"/><font style="color: red; font-weight: bold;">In Active</font>
						 		</td>
						 	</tr>
							<tr style="line-height:5px;">
								<td>&nbsp;</td>
							</tr>	
						 	<tr>
						 		<td width="20%" class="TD_LBL" align="left">
						 			Search By Header
						 		</td>
						 		<td width="5%" class="TD_LBL" align="center">
						 			:
						 		</td>
						 		<td class="" align="left">
						 			<select name="menuList" class="DDL" style="width: 200px;">
						 				<option value="">--Select--</option>
						 				<option value="A">Administration</option>						 				
						 				<option value="M">Master</option>
						 				<option value="T">Transaction</option>
						 				<option value="R">Reports</option>
						 				<option value="U">Utility</option>
						 			</select>
						 			<input type="button" value="SEARCH" class="BTN" style="width: 70px;">
						 		</td>
						 	</tr>
						 	<tr>
						 		<td width="20%" class="TD_LBL" align="left">
						 			Search By Name
						 		</td>
						 		<td width="5%" class="TD_LBL" align="center">
						 			:
						 		</td>
						 		<td class="" align="left">
						 			<input type="text" class="TXT_CAP" style="width: 200px;">
						 			<input type="button" value="SEARCH" class="BTN" style="width: 70px;">
						 		</td>
						 	</tr>
						</table>	<%-- End of Search Table --%>	
				 	</td>
			   	</tr>
				<tr style="line-height:10px;">
					<td>&nbsp;</td>
				</tr>	
			   	<tr>
			   		<td style="background-color:#008080;" align="right">
			   			<input type="button" value="ADD NEW" class="BTN" style="width: 70px;" onclick="addNew();">
			   			<input type="button" value="DELETE" class="BTN" style="width: 70px;">
			   			<input type="button" value="PRINT" class="BTN" style="width: 70px;">
			   			<input type="button" value="EXPORT" class="BTN" style="width: 70px;">
			   		</td>
			   	</tr>
				<tr style="line-height:10px;">
					<td>&nbsp;</td>
				</tr>	
	  			<tr>
	  				<td>
						 <table border="0" cellspacing="0" cellpadding="5" width="100%" align="center">
							<tr>
								<td style="color: blue; font-size: 12px; font-family: Courier;">
									No of Records Found : 10
								</td>
								<td style="color: blue; font-size: 12px; font-family: Courier;" align="right">
									<a href="#">Prev</a> || <a href="#">Next</a>
									Go To 
									<select class="DDL">
										<option value=""></option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
									</select>
								</td>
							</tr>	
						</table>  
					</td>
				</tr>
				<tr style="line-height:10px;">
					<td>&nbsp;</td>
				</tr>	
  				<tr>
	  				<td>	  					
						 <table id="data" class="" border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
						 	<thead>
						 	<tr>
						 		<th  width="5%" align="center">
						 			&nbsp;
						 		</th>
						 		<th width="5%" align="center">
						 			Sl#
						 		</th>
						 		<th width="30%" align="center">
						 			Menu Name
						 		</th>
						 		<th width="20%" align="center">
						 			Parent Menu Name
						 		</th>
						 		<th width="20%" align="center">
						 			Menu Path
						 		</th>
						 		<th width="10%" align="center">
						 			Status
						 		</th>
						 		<th align="center">
						 			Action
						 		</th>
						 	</tr>
						 	</thead>							
						 	<tbody>
						 	<% for(int i = 1; i <= 10; i++ ){ %>
						 	 <tr>
						 	 	<td align="center">
						 	 		<input type="checkbox" />
						 	 	</td>
						 	 	<td  align="center">
						 	 		<%=i%>
						 	 	</td>
						 	 	<td  align="center">
						 	 		Create User
						 	 	</td>
						 	 	<td align="center">
						 	 		Administration
						 	 	</td>
						 	 	<td  align="center">
						 	 		../ePharmacy/user.do
						 	 	</td>
						 	 	<td align="center">
						 	 		<% if(i%2 == 0){ %>
						 	 			<font style="color: green; font-weight: bold;">Active</font>
									<% }else{ %>
						 	 			<font style="color: red; font-weight: bold;">In Active</font>		
						 	 		<%} %>													 	 			
						 	 	</td>
						 	 	<td align="center">
						 	 		<a href="#" style="color: blue">Edit</a>
						 	 	</td>
						 	 </tr>
						 	 <%} %>
						 	 </tbody>
						</table>  						
					</td>
			</table> <%-- Outer Table --%> 			
		</form>
	</body>
</html>