<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />

<link
	href="<c:url value="/resources/global/plugins/font-awesome/css/font-awesome.min.css"/>"
	rel="stylesheet" type="text/css" />
	
<link
	href="<c:url value="/resources/global/plugins/simple-line-icons/simple-line-icons.min.css"/>"
	rel="stylesheet" type="text/css" />
	
<link
	href="<c:url value="/resources/global/plugins/bootstrap/css/bootstrap.min.css"/>"
	rel="stylesheet" type="text/css" />
	
<link
	href="<c:url value="/resources/global/plugins/uniform/css/uniform.default.css"/>"
	rel="stylesheet" type="text/css" />
	
<link
	href="<c:url value="/resources/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css"/>"
	rel="stylesheet" type="text/css" />
	

<link href="<c:url value="/resources/global/css/components.css"/>"
	rel="stylesheet" type="text/css" />

<link href="<c:url value="/resources/global/css/plugins.css"/>"
	rel="stylesheet" type="text/css" />
	
	
<link href="<c:url value="/resources/admin/layout/css/layout.css"/>"
	rel="stylesheet" type="text/css" />
<link
	href="<c:url value="/resources/admin/layout/css/themes/darkblue.css"/>"
	rel="stylesheet" type="text/css" id="style_color" />
<link href="<c:url value="/resources/admin/layout/css/custom.css"/>"
	rel="stylesheet" type="text/css" />
	

<link rel="shortcut icon" href="<c:url value="/resources/admin/layout/img/favicon.ico"/>">

<style>
.td_style{
	width: 30%;
}
</style>

<script
				src="<c:url value="/resources/global/plugins/jquery.min.js"/>"
				type="text/javascript"></script>
				
<script >

$(document).ready(function(){
       
        $("#windows_file_system").hide();
		$("#meterpreter_deployment").hide();
		$("#post_module_deployment").hide();
		$("#windows_file_system_agentless").hide();
		$("#windows_network_share").hide();			 
		$("#UNIX_filesystem").hide();
		$("#microsoft_sql_server").hide();
		$("#MySQL").hide();
		
		$("#div_action").hide();
		  
		  $('#scan_type').change(function(){
		  
				var option = $(this).find('option:selected').val();
				switch(option){
					case '1':	
						$("#windows_file_system").show();
						$("#div_action").show();
						$("#meterpreter_deployment").hide();
						$("#post_module_deployment").hide();
						$("#windows_file_system_agentless").hide();
						$("#windows_network_share").hide();			 
						$("#UNIX_filesystem").hide();
						$("#microsoft_sql_server").hide();
						$("#MySQL").hide();
						
						break;
					case '2':
						$("#windows_file_system").hide();
						$("#meterpreter_deployment").show();
						$("#post_module_deployment").hide();
						$("#windows_file_system_agentless").hide();
						$("#windows_network_share").hide();			 
						$("#UNIX_filesystem").hide();
						$("#microsoft_sql_server").hide();
						$("#MySQL").hide();
						$("#div_action").show();
						break;
					case '3':
						$("#windows_file_system").hide();
						$("#meterpreter_deployment").hide();
						$("#post_module_deployment").show();
						$("#windows_file_system_agentless").hide();
						$("#windows_network_share").hide();			 
						$("#UNIX_filesystem").hide();
						$("#microsoft_sql_server").hide();
						$("#MySQL").hide();
						$("#div_action").show();
						break;
					case '4':
						$("#windows_file_system").hide();
						$("#meterpreter_deployment").hide();
						$("#post_module_deployment").hide();
						$("#windows_file_system_agentless").show();
						$("#windows_network_share").hide();			 
						$("#UNIX_filesystem").hide();
						$("#microsoft_sql_server").hide();
						$("#MySQL").hide();
						$("#div_action").show();
						break;
					case '5':
						$("#windows_file_system").hide();
						$("#meterpreter_deployment").hide();
						$("#post_module_deployment").hide();
						$("#windows_file_system_agentless").hide();
						$("#windows_network_share").show();			 
						$("#UNIX_filesystem").hide();
						$("#microsoft_sql_server").hide();
						$("#MySQL").hide();
						$("#div_action").show();
						break;
					case '6':
						$("#windows_file_system").hide();
						$("#meterpreter_deployment").hide();
						$("#post_module_deployment").hide();
						$("#windows_file_system_agentless").hide();
						$("#windows_network_share").hide();			 
						$("#UNIX_filesystem").show();
						$("#microsoft_sql_server").hide();
						$("#MySQL").hide();
						$("#div_action").show();
						break;
					case '7':
						$("#windows_file_system").hide();
						$("#meterpreter_deployment").hide();
						$("#post_module_deployment").hide();
						$("#windows_file_system_agentless").hide();
						$("#windows_network_share").hide();			 
						$("#UNIX_filesystem").hide();
						$("#microsoft_sql_server").show();
						$("#MySQL").hide();
						$("#div_action").show();
						break;
					case '8':
						$("#windows_file_system").hide();
						$("#meterpreter_deployment").hide();
						$("#post_module_deployment").hide();
						$("#windows_file_system_agentless").hide();
						$("#windows_network_share").hide();			 
						$("#UNIX_filesystem").hide();
						$("#microsoft_sql_server").hide();
						$("#MySQL").show();
						$("#div_action").show();
						break;
						
					default:
						$("#windows_file_system").hide();
						$("#meterpreter_deployment").hide();
						$("#post_module_deployment").hide();
						$("#windows_file_system_agentless").hide();
						$("#windows_network_share").hide();			 
						$("#UNIX_filesystem").hide();
						$("#microsoft_sql_server").hide();
						$("#MySQL").hide();
						$("#div_action").hide();
				}
		
	});
 
});
</script>   

<title>New Profile</title>
</head>

<!-- Start Set up Spring Url -->
<spring:url value="/" var="mainUrl" />
<spring:url value="/profile" var="profileUrl" />
<spring:url value="/regex" var="regexUrl" />
<spring:url value="/newprofile" var="newprofileUrl" />
<spring:url value="/scan" var="scanUrl" />
<spring:url value="/falsepositive" var="falsepositiveUrl" />
<spring:url value="/log" var="logUrl" />
<spring:url value="/aboutusUrl" var="aboutusUrl" />
<!-- End Set up Spring Url -->


<body class="page-header-fixed page-quick-sidebar-over-content page-style-square">
<!-- BEGIN HEADER -->
<div class="page-header navbar">
	<!-- BEGIN HEADER INNER -->
	<%@include file="includes/header.jsp" %>
	<!-- END HEADER INNER -->
</div>
<!-- END HEADER -->
<div class="clearfix">
</div>
<!-- BEGIN CONTAINER -->
<div class="page-container">
	<!-- BEGIN SIDEBAR -->
	<div class="page-sidebar-wrapper">
		<div class="page-sidebar navbar-collapse collapse">
			<%@include file="includes/menubar.jsp" %>
		</div>
	</div>
	<!-- END SIDEBAR -->
	
	<!-- BEGIN CONTENT -->
	<<div class="page-content-wrapper">
		<div class="page-content">
			<div class="page-bar">
				<ul class="page-breadcrumb">
					<li>
						<i class="fa fa-home"></i>
						<a href="index_cdd.html">Home</a>
						<i class="fa fa-angle-right"></i>
					</li>
					<li>
						<a href="profile_cdd.html">Profiles</a>
						
					</li>
					<li>
					<i class="fa fa-angle-right"></i>
						<a href="javascript:;">New Profile</a>
						
					</li>
					
				</ul>
			
		</div>
		
		<h3 class="page-title">
			Create A New Scan Profile
		</h3>
		
		<!-- BEGIN PORTLET-->
					<div class="portlet box green">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-cogs"></i>Profile
							</div>
						
						</div>
						
							<div class="portlet-body form">
							<form role="form">
								<div class="form-body">
	<!------------------------------------------------------------------------------------------------------------------------------------->
<!------------------------------------------------------------------------------------------------------------------------------------->		
<!------------------------------------------------------------------------------------------------------------------------------------->
									<table class="table table-striped table-hover table-bordered" id="sample_editable_1" style="text-align:center;">
							
										<tbody >
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Profile Name</Strong>
													<a href="print.html"  onclick="window.open('information.html', 'newwindow', 'width=300, height=250'); return false;"> Print</a>
												</td>
												<td>
													 <input type="text" class="form-control" placeholder="Profile name">
												</td>
											</tr>
											<tr>
												<td class="td_style"  style="vertical-align:middle;">
													<Strong>Scan Type</Strong>
												</td>
												<td>
													 <select class = "form-control"  id="scan_type" value='0'>
														<option value='0' >Select...</option>
														<option value= '1' >Windows Filesystem (agent)</option>														
														<option value= '2' >Metasploit (agent) - Meterpreter deployment</option>
														<option value= '3' >Metasploit (agent) - Post Module deployment (for Armitage compatibility)</option>
														<option></option>
														<option value= '4' >Windows Filesystem (agentless over SMB)</option>
														<option value= '5' >Windows Network Share (agentless over SMB)</option>
														<option value= '6' >UNIX Filesystem (agentless over SSH)</option>
														<option></option>
														<option value= '7' >Microsoft SQL Server (agentless)</option>
														<option value= '8' >MySQL (agentless)</option>
													
													 </select>
												</td>
											</tr>
											<tr >
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Mask Sensitive Data?</Strong>
												</td>
												<td style="text-align:left;">
													 <span>
														<input type="checkbox" id="mask" checked>
													 </span>
												</td>
											</tr>
										</tbody>
									</table>
<!--------------------------------------------------------------------------------------------------------------------------------------------------->
									<table class="table table-striped table-hover table-bordered" id="windows_file_system" style="text-align:center;">
							
										<tbody>
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Username</Strong>
												</td>
												<td>
													 <input type="text" class="form-control" placeholder="Profile name" id="username" name="username">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Password</Strong>
												</td>
												<td>
													 <input type="password" class="form-control" placeholder="Password" id="password" name="password">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Windows Domain/Workgroup</Strong>
													<p>(For Windows OS scans (except Windows Share scans): Required.
													For MSSQL DB scans:</p>
													<p>- Specify if you are using OS account</p>
													<p>- Leave blank if using DB account</p>
												</td>
												<td style="vertical-align:middle;"> 
													 <input type="text" class="form-control" placeholder="Windows Domain/Workgroup" id="workgroup" name="workgroup">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>SMBHash</Strong>
												</td>
												<td>
													 <input type="text" class="form-control" placeholder="Profile name" id="SMBHash" name="SMBHash">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Installation Path</Strong>
													<p>(Must be new directory. Be aware temporary files may be readable by other users.)</p>
												</td>
												<td>
													 <input type="text" class="form-control" value="c:\Program Files\OpenDLP" id="Installation_Path" name="Installation_Path">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Memory Limit</Strong>
													<p>(as percent of target system's total RAM)</p>
												</td>
												<td>
													 <select class = "form-control input-xsmall" id="Memory_Limit" >
														<option value = '1'>1%</option>
														<option value ='2'>2%</option>
														<option value ='3' >5%</option>
														<option value = "4" selected="selected" >10%</option>
														<option value ='5' >15%</option>
														<option value ='6' >20%</option>
														<option value ='7' >25%</option>
													
													 </select>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Directories</Strong>
													<p>(Newline-delimit the file extensions in this list)</p>
												</td>
												<td style="text-align: left;">
													<div class="col-md-9">
														<div class="radio-list">
															<label>
															<input type="radio" name="optionsRadios_dir" id="directories" value="directories" > Scan all directories</label>
															<label>
															<input type="radio" name="optionsRadios_dir" id="directories_except" value="directories1" checked > Scan all directories except these (recursive) </label>
															<label>
															<input type="radio" name="optionsRadios_dir" id="only" value="directories2" > Directories except scan the following directories (recursive)</label>
														</div>
													</div>
													<textarea class="form-control" rows="4" >c:\windows
c:\winnt
c:\System Volume Information</textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>File Extensions</Strong>
													<p>(Newline-delimit the file extensions in this list)</p>
												</td>
												<td style="text-align: left;">
													<div class="col-md-9">
														<div class="radio-list">
															<label>
															<input type="radio" name="optionsRadios_file" id="radio_scan_all_file" value="option1" > Scan all files</label>
															<label>
															<input type="radio" name="optionsRadios_file" id="radio_scan_all_file_except" value="option2" checked > Scan all files except files with the following extensions </label>
															<label>
															<input type="radio" name="optionsRadios_file" id="scan_only" value="scan_only" > Only scan files with the following file extensions</label>
														</div>
													</div>
													<textarea class="form-control" rows="8">323
386
3g2
3gp
3gp2
3gpp
7z
aac
aca
ace
aif
aifc
aiff
al
amc
ani
arj
asx
au
au3
avi
bmp
bz
bz2
cab
caf
cda
cdda
cdf
cdx
cgi
chm
chr
cmf
cnv
cod
com
ctx
datasource
del
dep
dev
devp
dib
dl_
dll
dmg
don
dpbcc
drv
dsp
elm
exe
flt
fon
frm
gen
gif
gz
hiv
hlp
hpp
hxs
hxx
ico
idl
inf
ink
inl
ism
iso
jfif
jpe
jpeg
jpg
ldf
lex
lib
lic
lng
lnk
lxa
m3u
mdi
mib
mid
miv
mk
mmp
mov
mp2
mp2v
mp3
mp4
mpampe
mpeg
mpegmpv2maw
mpg
mpq
msi
msp
ncb
nlb
nls
nrg
o
obj
ocx
otf
p
pch
pct
pf
pfm
pic
pict
pll
pm
pnf
png
pnt
pntg
ppi
psp
pst
pyc
pyo
pywqpa
qt
qti
qtif
qtl
rar
rb
rbw
rc
rc2
rco
rdd
rmi
rnd
s
scr
sd2
sst
sy_
sys
tar
tgz
tif
tiff
tlb
tmf
ttf
url
uu
vmss
vmdk
vmem
vxd
wav
wax
wma
wmf
wmv
wpc
wpl</textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Regular Expressions</Strong>
													
												</td>
												<td style="text-align: left;"> 
													 <div class="checkbox-list">
														<label>
														<input type="checkbox"> AMEX </label>
														<label>
														<input type="checkbox"> Credit_Card_Track_1 </label>
														<label>
														<input type="checkbox"> Credit_Card_Track_2 </label>
														<label>
														<input type="checkbox"> Credit_Card_Track_Data </label>
														<label>
														<input type="checkbox"> Diners_Club_1 </label>
														<label>
														<input type="checkbox"> Discover </label>
														<label>
														<input type="checkbox"> JCB_1 </label>
														<label>
														<input type="checkbox"> JCB_2 </label>
														<label>
														<input type="checkbox"> Mastercard</label>
														<label>
														<input type="checkbox"> Social_Security_Number_dashes </label>
														<label>
														<input type="checkbox"> Social_Security_Number_spaces </label>
														<label>
														<input type="checkbox"> Visa</label>															
													</div>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Credit Cards</Strong>
													<p>(Newline-delimit the names of the regex aliases)</p>
												</td>
												<td style="text-align: left;">
													
													<textarea class="form-control" rows="8" >Mastercard
Visa
AMEX
Diners_Club_1
Diners_Club_2
Discover
JCB_1
JCB_2</textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>ZIP Extensions</Strong>
													<p>(Treat these extensions as ZIP files. Newline-delimit the names of file extensions.)</p>
												</td>
												<td style="text-align: left;">
													
													<textarea class="form-control" rows="10" >zip
jar
xlsx
docx
pptx
odt
odp
ods
odg</textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Upload URL</Strong>
													<p>(This is the URL on your web server)<p>
												</td>
												<td style="vertical-align:middle">
													 <input type="text" class="form-control" placeholder="Upload URL">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Upload URL Username</Strong>
												</td>
												<td style="vertical-align:middle">
													 <input type="text" class="form-control" placeholder="Upload URL Username ">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Upload URL Password</Strong>
												</td>
												<td>
													 <input type="text" class="form-control" placeholder="Upload URL Password">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Time Between Uploads</Strong>
												</td>
												<td>
													 <input type="text" class="form-control" value="300">
												</td>
											</tr>
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Description</Strong>
													<p>(Will show as Windows Service description)</p>
												</td>
												<td>
													 <input type="text" class="form-control" placeholder="Description">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Log Verbosity</Strong>
												</td>
												<td>
													 <select class = "form-control" >
														<option >Normal</option>
														<option>More Verbose (Not recommended for large (100+) deployments)</option>
														<option>Extremely Verbose (Not recommended for medium (10+) deployments)</option>
														<option>Intensely Verbose (Not recommended for small (3+) deployments)</option>
					
													 </select>
												</td>
											</tr>
											
											
										</tbody>
									</table>
									
	<!------------------------------------------------------------------------------------------------------------------------------------->
<!------------------------------------------------------------------------------------------------------------------------------------->		
<!------------------------------------------------------------------------------------------------------------------------------------->								
<table class="table table-striped table-hover table-bordered" id="meterpreter_deployment" style="text-align:center;">
							
										<tbody >
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Metasploit Host</Strong>
													<p>IP of running Metasploit console.</p>
												</td>
												
												<td style="text-align:left;">
													 <span>
													 <input type="text" class="form-control" placeholder="Metasploit Host" id="Metasploit_Host" name="Metasploit_Host">
														<input type="checkbox" id="useSSL" checked >Use SSL</input>
													 </span>
												</td>
											</tr>
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Metasploit Port</Strong>
													<p>Port of running Metasploit console.</p>
												</td>
												
												<td style="vertical-align: middle;">
													 <span>
													 <input type="text" class="form-control" placeholder="Metasploit Port" id="Metasploit_Port" name="Metasploit_Port">
														
													 </span>
												</td>
											</tr>
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Metasploit User</Strong>
													<p>xmlrpc username</p>
												</td>
												<td style="vertical-align: middle;" >
													 <input type="text" class="form-control" placeholder="Metasploit User">
												</td>
											</tr>
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Metasploit Password</Strong>
													<p>xmlrpc password</p>
												</td>
												<td style="vertical-align: middle;" >
													 <input type="password" class="form-control" placeholder="Metasploit Password">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Path to OpenDLP files</Strong>
													<p>Location on Metasploit system</p>
												</td>
												<td>
													 <input type="text" class="form-control" placeholder="Path to OpenDLP files">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Metasploit Latency (ms)</Strong>
													<p>Leave alone unless CPU usage high</p>
												</td>
												<td style="vertical-align: middle;" >
													 <input type="text" class="form-control" placeholder="Metasploit Latency" value ="100">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Metasploit Timeout (s)</Strong>
													<p>Time to wait for response before giving up</p>
												</td>
												<td style="vertical-align: middle;" >
													 <input type="text" class="form-control" placeholder="Metasploit Timeout" value ="30">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Installation Path</Strong>
													<p>(Must be new directory. Be aware temporary files may be readable by other users.)</p>
												</td>
												<td style="vertical-align: middle;" >
													 <input type="text" class="form-control"  id="Installation_Path" name="Installation_Path">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Memory Limit</Strong>
													<p>(as percent of target system's total RAM)</p>
												</td>
												<td style="vertical-align: middle;" >
													 <select class = "form-control input-xsmall" id="Memory_Limit" >
														<option >1%</option>
														<option>2%</option>
														<option>5%</option>
														<option >10%</option>
														<option>15%</option>
														<option>20%</option>
														<option>25%</option>
													
													 </select>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Directories</Strong>
													<p>(Newline-delimit the file extensions in this list)</p>
												</td>
												<td style="text-align: left;">
													<div class="col-md-9">
														<div class="radio-list">
															<label>
															<input type="radio" name="optionsRadios_dir" id="directories" value="option1" > Scan all directories</label>
															<label>
															<input type="radio" name="optionsRadios_dir" id="directories_except" value="option2" checked > Scan all directories except these (recursive) </label>
															<label>
															<input type="radio" name="optionsRadios_dir" id="only" value="option2" > directories except scan the following directories (recursive)</label>
														</div>
													</div>
													<textarea class="form-control" rows="4" >c:\windows
c:\winnt
c:\System Volume Information</textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>File Extensions</Strong>
													<p>(Newline-delimit the file extensions in this list)</p>
												</td>
												<td style="text-align: left;">
													<div class="col-md-9">
														<div class="radio-list">
															<label>
															<input type="radio" name="optionsRadios_file" id="radio_scan_all_file" value="option1" > Scan all files</label>
															<label>
															<input type="radio" name="optionsRadios_file" id="radio_scan_all_file_except" value="option2" checked > Scan all files except files with the following extensions </label>
															<label>
															<input type="radio" name="optionsRadios_file" id="scan_only" value="option2" > Only scan files with the following file extensions</label>
														</div>
													</div>
													<textarea class="form-control" rows="8" >323
386
3g2
3gp
3gp2
3gpp
7z
aac
aca
ace
aif
aifc
aiff
al
amc
ani
arj
asx
au
au3
avi
bmp
bz
bz2
cab
caf
cda
cdda
cdf
cdx
cgi
chm
chr
cmf
cnv
cod
com
ctx
datasource
del
dep
dev
devp
dib
dl_
dll
dmg
don
dpbcc
drv
dsp
elm
exe
flt
fon
frm
gen
gif
gz
hiv
hlp
hpp
hxs
hxx
ico
idl
inf
ink
inl
ism
iso
jfif
jpe
jpeg
jpg
ldf
lex
lib
lic
lng
lnk
lxa
m3u
mdi
mib
mid
miv
mk
mmp
mov
mp2
mp2v
mp3
mp4
mpampe
mpeg
mpegmpv2maw
mpg
mpq
msi
msp
ncb
nlb
nls
nrg
o
obj
ocx
otf
p
pch
pct
pf
pfm
pic
pict
pll
pm
pnf
png
pnt
pntg
ppi
psp
pst
pyc
pyo
pywqpa
qt
qti
qtif
qtl
rar
rb
rbw
rc
rc2
rco
rdd
rmi
rnd
s
scr
sd2
sst
sy_
sys
tar
tgz
tif
tiff
tlb
tmf
ttf
url
uu
vmss
vmdk
vmem
vxd
wav
wax
wma
wmf
wmv
wpc
wpl</textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Regular Expressions</Strong>
													
												</td>
												<td style="text-align: left;"> 
													 <div class="checkbox-list">
														<label>
														<input type="checkbox"> AMEX </label>
														<label>
														<input type="checkbox"> Credit_Card_Track_1 </label>
														<label>
														<input type="checkbox"> Credit_Card_Track_2 </label>
														<label>
														<input type="checkbox"> Credit_Card_Track_Data </label>
														<label>
														<input type="checkbox"> Diners_Club_1 </label>
														<label>
														<input type="checkbox"> Discover </label>
														<label>
														<input type="checkbox"> JCB_1 </label>
														<label>
														<input type="checkbox"> JCB_2 </label>
														<label>
														<input type="checkbox"> Mastercard</label>
														<label>
														<input type="checkbox"> Social_Security_Number_dashes </label>
														<label>
														<input type="checkbox"> Social_Security_Number_spaces </label>
														<label>
														<input type="checkbox"> Visa</label>															
													</div>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Credit Cards</Strong>
													<p>(Newline-delimit the names of the regex aliases)</p>
												</td>
												<td style="text-align: left;">
													
													<textarea class="form-control" rows="8" >Mastercard
Visa
AMEX
Diners_Club_1
Diners_Club_2
Discover
JCB_1
JCB_2</textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>ZIP Extensions</Strong>
													<p>(Treat these extensions as ZIP files. Newline-delimit the names of file extensions.)</p>
												</td>
												<td style="text-align: left;">
													
													<textarea class="form-control" rows="10" >zip
jar
xlsx
docx
pptx
odt
odp
ods
odg</textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Upload URL</Strong>
													<p>(This is the URL on your web server)<p>
												</td>
												<td style="vertical-align: middle;" >
													 <input type="text" class="form-control" placeholder="Upload URL">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Upload URL Username</Strong>
												</td>
												<td>
													 <input type="text" class="form-control" placeholder="Upload URL Username ">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Upload URL Password</Strong>
												</td>
												<td>
													 <input type="text" class="form-control" placeholder="Upload URL Password">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Time Between Uploads</Strong>
												</td>
												<td>
													 <input type="text" class="form-control" value="300">
												</td>
											</tr>
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Description</Strong>
													<p>(Will show as Windows Service description)</p>
												</td>
												<td style="vertical-align: middle;" >
													 <input type="text" class="form-control" placeholder="Description">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Scan Type</Strong>
												</td>
												<td>
													 <select class = "form-control" >
														<option >Normal</option>
														<option>More Verbose (Not recommended for large (100+) deployments)</option>
														<option>Extremely Verbose (Not recommended for medium (10+) deployments)</option>
														<option>Intensely Verbose (Not recommended for small (3+) deployments)</option>
					
													 </select>
												</td>
											</tr>
											
											
										</tbody>
									</table>
<!------------------------------------------------------------------------------------------------------------------------------------->
<!------------------------------------------------------------------------------------------------------------------------------------->		
<!------------------------------------------------------------------------------------------------------------------------------------->				
									<table class="table table-striped table-hover table-bordered" id="post_module_deployment" style="text-align:center;">
							
										<tbody>
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Metasploit Host</Strong>
													<p>IP of running Metasploit console.</p>
												</td>
												
												<td style="text-align:left;">
													 <span>
													 <input type="text" class="form-control" placeholder="Metasploit Host" id="Metasploit_Host" name="Metasploit_Host">
														<input type="checkbox" id="useSSL" checked >Use SSL</input>
													 </span>
												</td>
											</tr>
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Metasploit Port</Strong>
													<p>Port of running Metasploit console.</p>
												</td>
												
												<td style="text-align:left;">
													 <span>
													 <input type="text" class="form-control" placeholder="Metasploit Port" id="Metasploit_Port" name="Metasploit_Port">
														
													 </span>
												</td>
											</tr>
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Metasploit User</Strong>
													<p>xmlrpc username</p>
												</td>
												<td style="vertical-align: middle">
													 <input type="text" class="form-control" placeholder="Metasploit User">
												</td>
											</tr>
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Metasploit Password</Strong>
													<p>xmlrpc password</p>
												</td>
												<td style="vertical-align: middle" >
													 <input type="password" class="form-control" placeholder="Metasploit Password">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Path to OpenDLP files</Strong>
													<p>Location on Metasploit system</p>
												</td>
												<td style="vertical-align: middle" >
													 <input type="text" class="form-control" placeholder="Path to OpenDLP files">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Metasploit Latency (ms)</Strong>
													<p>Leave alone unless CPU usage high</p>
												</td>
												<td style="vertical-align: middle" >
													 <input type="text" class="form-control" placeholder="Metasploit Latency" value ="100">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Metasploit Timeout (s)</Strong>
													<p>Time to wait for response before giving up</p>
												</td>
												<td style="vertical-align: middle" >
													 <input type="text" class="form-control" placeholder="Metasploit Timeout" value ="30">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Installation Path</Strong>
													<p>(Must be new directory. Be aware temporary files may be readable by other users.)</p>
												</td>
												<td style="vertical-align: middle" >
													 <input type="text" class="form-control"  id="Installation_Path" name="Installation_Path">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Memory Limit</Strong>
													<p>(as percent of target system's total RAM)</p>
												</td>
												<td style="vertical-align: middle" >
													 <select class = "form-control input-xsmall" id="Memory_Limit" >
														<option >1%</option>
														<option>2%</option>
														<option>5%</option>
														<option >10%</option>
														<option>15%</option>
														<option>20%</option>
														<option>25%</option>
													
													 </select>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Directories</Strong>
													<p>(Newline-delimit the file extensions in this list)</p>
												</td>
												<td style="text-align: left;">
													<div class="col-md-9">
														<div class="radio-list">
															<label>
															<input type="radio" name="optionsRadios_dir" id="directories" value="option1" > Scan all directories</label>
															<label>
															<input type="radio" name="optionsRadios_dir" id="directories_except" value="option2" checked > Scan all directories except these (recursive) </label>
															<label>
															<input type="radio" name="optionsRadios_dir" id="only" value="option2" > directories except scan the following directories (recursive)</label>
														</div>
													</div>
													<textarea class="form-control" rows="4" >c:\windows
c:\winnt
c:\System Volume Information</textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>File Extensions</Strong>
													<p>(Newline-delimit the file extensions in this list)</p>
												</td>
												<td style="text-align: left;">
													<div class="col-md-9">
														<div class="radio-list">
															<label>
															<input type="radio" name="optionsRadios_file" id="radio_scan_all_file" value="option1" > Scan all files</label>
															<label>
															<input type="radio" name="optionsRadios_file" id="radio_scan_all_file_except" value="option2" checked > Scan all files except files with the following extensions </label>
															<label>
															<input type="radio" name="optionsRadios_file" id="scan_only" value="option2" > Only scan files with the following file extensions</label>
														</div>
													</div>
													<textarea class="form-control" rows="8" >323
386
3g2
3gp
3gp2
3gpp
7z
aac
aca
ace
aif
aifc
aiff
al
amc
ani
arj
asx
au
au3
avi
bmp
bz
bz2
cab
caf
cda
cdda
cdf
cdx
cgi
chm
chr
cmf
cnv
cod
com
ctx
datasource
del
dep
dev
devp
dib
dl_
dll
dmg
don
dpbcc
drv
dsp
elm
exe
flt
fon
frm
gen
gif
gz
hiv
hlp
hpp
hxs
hxx
ico
idl
inf
ink
inl
ism
iso
jfif
jpe
jpeg
jpg
ldf
lex
lib
lic
lng
lnk
lxa
m3u
mdi
mib
mid
miv
mk
mmp
mov
mp2
mp2v
mp3
mp4
mpampe
mpeg
mpegmpv2maw
mpg
mpq
msi
msp
ncb
nlb
nls
nrg
o
obj
ocx
otf
p
pch
pct
pf
pfm
pic
pict
pll
pm
pnf
png
pnt
pntg
ppi
psp
pst
pyc
pyo
pywqpa
qt
qti
qtif
qtl
rar
rb
rbw
rc
rc2
rco
rdd
rmi
rnd
s
scr
sd2
sst
sy_
sys
tar
tgz
tif
tiff
tlb
tmf
ttf
url
uu
vmss
vmdk
vmem
vxd
wav
wax
wma
wmf
wmv
wpc
wpl</textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Regular Expressions</Strong>
													
												</td>
												<td style="text-align: left;"> 
													 <div class="checkbox-list">
														<label>
														<input type="checkbox"> AMEX </label>
														<label>
														<input type="checkbox"> Credit_Card_Track_1 </label>
														<label>
														<input type="checkbox"> Credit_Card_Track_2 </label>
														<label>
														<input type="checkbox"> Credit_Card_Track_Data </label>
														<label>
														<input type="checkbox"> Diners_Club_1 </label>
														<label>
														<input type="checkbox"> Discover </label>
														<label>
														<input type="checkbox"> JCB_1 </label>
														<label>
														<input type="checkbox"> JCB_2 </label>
														<label>
														<input type="checkbox"> Mastercard</label>
														<label>
														<input type="checkbox"> Social_Security_Number_dashes </label>
														<label>
														<input type="checkbox"> Social_Security_Number_spaces </label>
														<label>
														<input type="checkbox"> Visa</label>															
													</div>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Credit Cards</Strong>
													<p>(Newline-delimit the names of the regex aliases)</p>
												</td>
												<td style="text-align: left;">
													
													<textarea class="form-control" rows="8" >Mastercard
Visa
AMEX
Diners_Club_1
Diners_Club_2
Discover
JCB_1
JCB_2</textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>ZIP Extensions</Strong>
													<p>(Treat these extensions as ZIP files. Newline-delimit the names of file extensions.)</p>
												</td>
												<td style="text-align: left;">
													
													<textarea class="form-control" rows="10" >zip
jar
xlsx
docx
pptx
odt
odp
ods
odg</textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Upload URL</Strong>
													<p>(This is the URL on your web server)<p>
												</td>
												<td style="vertical-align: middle" >
													 <input type="text" class="form-control" placeholder="Upload URL">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Upload URL Username</Strong>
												</td>
												<td style="vertical-align: middle" >
													 <input type="text" class="form-control" placeholder="Upload URL Username ">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Upload URL Password</Strong>
												</td>
												<td style="vertical-align: middle" >
													 <input type="text" class="form-control" placeholder="Upload URL Password">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Time Between Uploads</Strong>
												</td>
												<td style="vertical-align: middle" >
													 <input type="text" class="form-control" value="300">
												</td>
											</tr>
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Description</Strong>
													<p>(Will show as Windows Service description)</p>
												</td>
												<td style="vertical-align: middle">
													 <input type="text" class="form-control" placeholder="Description">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Log Verbosity</Strong>
												</td>
												<td>
													 <select class = "form-control" >
														<option >Normal</option>
														<option>More Verbose (Not recommended for large (100+) deployments)</option>
														<option>Extremely Verbose (Not recommended for medium (10+) deployments)</option>
														<option>Intensely Verbose (Not recommended for small (3+) deployments)</option>
					
													 </select>
												</td>
											</tr>
											
											
										</tbody>
									</table>
<!--------------------------------------------------------------------------------------------------------------------------------------->									
<!--------------------------------------------------------------------------------------------------------------------------------------->
<!--------------------------------------------------------------------------------------------------------------------------------------->						
									<table class="table table-striped table-hover table-bordered" id="windows_file_system_agentless" style="text-align:center;">
							
										<tbody>
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Username</Strong>
												</td>
												<td>
													 <input type="text" class="form-control" placeholder="Profile name" id="username" name="username">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Password</Strong>
												</td>
												<td>
													 <input type="password" class="form-control" placeholder="Password" id="password" name="password">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Windows Domain/Workgroup</Strong>
													<p>(For Windows OS scans (except Windows Share scans): Required.
													For MSSQL DB scans:</p>
													<p>- Specify if you are using OS account</p>
													<p>- Leave blank if using DB account</p>
												</td>
												<td style="vertical-align:middle">
													 <input type="text" class="form-control" placeholder="Windows Domain/Workgroup" id="workgroup" name="workgroup">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>SMBHash</Strong>
												</td>
												<td style="vertical-align:middle" >
													 <input type="text" class="form-control" placeholder="Profile name" id="SMBHash" name="SMBHash">
												</td>
											</tr>
											
											
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Memory Limit</Strong>
													<p>(as percent of target system's total RAM)</p>
												</td>
												<td style="vertical-align:middle" >
													 <select class = "form-control input-xsmall" id="Memory_Limit" >
														<option >1%</option>
														<option>2%</option>
														<option>5%</option>
														<option >10%</option>
														<option>15%</option>
														<option>20%</option>
														<option>25%</option>
													
													 </select>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Directories</Strong>
													<p>(Newline-delimit the file extensions in this list)</p>
												</td>
												<td style="text-align: left;">
													<div class="col-md-9">
														<div class="radio-list">
															<label>
															<input type="radio" name="optionsRadios_dir" id="directories" value="option1" > Scan all directories</label>
															<label>
															<input type="radio" name="optionsRadios_dir" id="directories_except" value="option2" checked > Scan all directories except these (recursive) </label>
															<label>
															<input type="radio" name="optionsRadios_dir" id="only" value="option2" > directories except scan the following directories (recursive)</label>
														</div>
													</div>
													<textarea class="form-control" rows="4" >c:\windows
c:\winnt
c:\System Volume Information</textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>File Extensions</Strong>
													<p>(Newline-delimit the file extensions in this list)</p>
												</td>
												<td style="text-align: left;">
													<div class="col-md-9">
														<div class="radio-list">
															<label>
															<input type="radio" name="optionsRadios_file" id="radio_scan_all_file" value="option1" > Scan all files</label>
															<label>
															<input type="radio" name="optionsRadios_file" id="radio_scan_all_file_except" value="option2" checked > Scan all files except files with the following extensions </label>
															<label>
															<input type="radio" name="optionsRadios_file" id="scan_only" value="option2" > Only scan files with the following file extensions</label>
														</div>
													</div>
													<textarea class="form-control" rows="8" >323
386
3g2
3gp
3gp2
3gpp
7z
aac
aca
ace
aif
aifc
aiff
al
amc
ani
arj
asx
au
au3
avi
bmp
bz
bz2
cab
caf
cda
cdda
cdf
cdx
cgi
chm
chr
cmf
cnv
cod
com
ctx
datasource
del
dep
dev
devp
dib
dl_
dll
dmg
don
dpbcc
drv
dsp
elm
exe
flt
fon
frm
gen
gif
gz
hiv
hlp
hpp
hxs
hxx
ico
idl
inf
ink
inl
ism
iso
jfif
jpe
jpeg
jpg
ldf
lex
lib
lic
lng
lnk
lxa
m3u
mdi
mib
mid
miv
mk
mmp
mov
mp2
mp2v
mp3
mp4
mpampe
mpeg
mpegmpv2maw
mpg
mpq
msi
msp
ncb
nlb
nls
nrg
o
obj
ocx
otf
p
pch
pct
pf
pfm
pic
pict
pll
pm
pnf
png
pnt
pntg
ppi
psp
pst
pyc
pyo
pywqpa
qt
qti
qtif
qtl
rar
rb
rbw
rc
rc2
rco
rdd
rmi
rnd
s
scr
sd2
sst
sy_
sys
tar
tgz
tif
tiff
tlb
tmf
ttf
url
uu
vmss
vmdk
vmem
vxd
wav
wax
wma
wmf
wmv
wpc
wpl</textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Regular Expressions</Strong>
													
												</td>
												<td style="text-align: left;"> 
													 <div class="checkbox-list">
														<label>
														<input type="checkbox"> AMEX </label>
														<label>
														<input type="checkbox"> Credit_Card_Track_1 </label>
														<label>
														<input type="checkbox"> Credit_Card_Track_2 </label>
														<label>
														<input type="checkbox"> Credit_Card_Track_Data </label>
														<label>
														<input type="checkbox"> Diners_Club_1 </label>
														<label>
														<input type="checkbox"> Discover </label>
														<label>
														<input type="checkbox"> JCB_1 </label>
														<label>
														<input type="checkbox"> JCB_2 </label>
														<label>
														<input type="checkbox"> Mastercard</label>
														<label>
														<input type="checkbox"> Social_Security_Number_dashes </label>
														<label>
														<input type="checkbox"> Social_Security_Number_spaces </label>
														<label>
														<input type="checkbox"> Visa</label>															
													</div>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Credit Cards</Strong>
													<p>(Newline-delimit the names of the regex aliases)</p>
												</td>
												<td style="text-align: left;">
													
													<textarea class="form-control" rows="8" >Mastercard
Visa
AMEX
Diners_Club_1
Diners_Club_2
Discover
JCB_1
JCB_2</textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>ZIP Extensions</Strong>
													<p>(Treat these extensions as ZIP files. Newline-delimit the names of file extensions.)</p>
												</td>
												<td style="text-align: left;">
													
													<textarea class="form-control" rows="10" >zip
jar
xlsx
docx
pptx
odt
odp
ods
odg</textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Concurrent deployments</Strong>
													<p>(Only for initial deployment, not running)</p>
												</td>
												<td style="vertical-align:middle" >
													 <input type="text" class="form-control">
												</td>
											</tr>
											
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Log Verbosity </Strong>
												</td>
												<td >
													 <select class = "form-control" >
														<option >Normal</option>
														<option>More Verbose (Not recommended for large (100+) deployments)</option>
														<option>Extremely Verbose (Not recommended for medium (10+) deployments)</option>
														<option>Intensely Verbose (Not recommended for small (3+) deployments)</option>
					
													 </select>
												</td>
											</tr>
											
											
										</tbody>
									</table>
<!--------------------------------------------------------------------------------------------------------------------------------------->									
<!--------------------------------------------------------------------------------------------------------------------------------------->
<!--------------------------------------------------------------------------------------------------------------------------------------->									
									<table class="table table-striped table-hover table-bordered" id="windows_network_share" style="text-align:center;">
							
										<tbody>
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Username</Strong>
												</td>
												<td style="vertical-align:middle;" >
													 <input type="text" class="form-control" placeholder="Profile name" id="username" name="username">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Password</Strong>
												</td>
												<td style="vertical-align:middle;">
													 <input type="password" class="form-control" placeholder="Password" id="password" name="password">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Windows Domain/Workgroup</Strong>
													<p>(For Windows OS scans (except Windows Share scans): Required.
													For MSSQL DB scans:</p>
													<p>- Specify if you are using OS account</p>
													<p>- Leave blank if using DB account</p>
												</td>
												<td style="vertical-align:middle;" >
													 <input type="text" class="form-control" placeholder="Windows Domain/Workgroup" id="workgroup" name="workgroup">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>SMBHash</Strong>
												</td>
												<td style="vertical-align:middle;" >
													 <input type="text" class="form-control" placeholder="Profile name" id="SMBHash" name="SMBHash">
												</td>
											</tr>
											
											
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Memory Limit</Strong>
													<p>(as percent of target system's total RAM)</p>
												</td>
												<td style="vertical-align:middle;" >
													 <select class = "form-control input-xsmall" id="Memory_Limit" >
														<option >1%</option>
														<option>2%</option>
														<option>5%</option>
														<option >10%</option>
														<option>15%</option>
														<option>20%</option>
														<option>25%</option>
													
													 </select>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Directories</Strong>
													<p>(Newline-delimit the file extensions in this list)</p>
												</td>
												<td style="text-align: left;">
													<div class="col-md-9">
														<div class="radio-list">
															<label>
															<input type="radio" name="optionsRadios_dir" id="directories" value="option1" > Scan all directories</label>
															<label>
															<input type="radio" name="optionsRadios_dir" id="directories_except" value="option2" checked > Scan all directories except these (recursive) </label>
															<label>
															<input type="radio" name="optionsRadios_dir" id="only" value="option2" > directories except scan the following directories (recursive)</label>
														</div>
													</div>
													<textarea class="form-control" rows="4" >c:\windows
c:\winnt
c:\System Volume Information</textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>File Extensions</Strong>
													<p>(Newline-delimit the file extensions in this list)</p>
												</td>
												<td style="text-align: left;">
													<div class="col-md-9">
														<div class="radio-list">
															<label>
															<input type="radio" name="optionsRadios_file" id="radio_scan_all_file" value="option1" > Scan all files</label>
															<label>
															<input type="radio" name="optionsRadios_file" id="radio_scan_all_file_except" value="option2" checked > Scan all files except files with the following extensions </label>
															<label>
															<input type="radio" name="optionsRadios_file" id="scan_only" value="option2" > Only scan files with the following file extensions</label>
														</div>
													</div>
													<textarea class="form-control" rows="8" >323
386
3g2
3gp
3gp2
3gpp
7z
aac
aca
ace
aif
aifc
aiff
al
amc
ani
arj
asx
au
au3
avi
bmp
bz
bz2
cab
caf
cda
cdda
cdf
cdx
cgi
chm
chr
cmf
cnv
cod
com
ctx
datasource
del
dep
dev
devp
dib
dl_
dll
dmg
don
dpbcc
drv
dsp
elm
exe
flt
fon
frm
gen
gif
gz
hiv
hlp
hpp
hxs
hxx
ico
idl
inf
ink
inl
ism
iso
jfif
jpe
jpeg
jpg
ldf
lex
lib
lic
lng
lnk
lxa
m3u
mdi
mib
mid
miv
mk
mmp
mov
mp2
mp2v
mp3
mp4
mpampe
mpeg
mpegmpv2maw
mpg
mpq
msi
msp
ncb
nlb
nls
nrg
o
obj
ocx
otf
p
pch
pct
pf
pfm
pic
pict
pll
pm
pnf
png
pnt
pntg
ppi
psp
pst
pyc
pyo
pywqpa
qt
qti
qtif
qtl
rar
rb
rbw
rc
rc2
rco
rdd
rmi
rnd
s
scr
sd2
sst
sy_
sys
tar
tgz
tif
tiff
tlb
tmf
ttf
url
uu
vmss
vmdk
vmem
vxd
wav
wax
wma
wmf
wmv
wpc
wpl</textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Regular Expressions</Strong>
													
												</td>
												<td style="text-align: left;"> 
													 <div class="checkbox-list">
														<label>
														<input type="checkbox"> AMEX </label>
														<label>
														<input type="checkbox"> Credit_Card_Track_1 </label>
														<label>
														<input type="checkbox"> Credit_Card_Track_2 </label>
														<label>
														<input type="checkbox"> Credit_Card_Track_Data </label>
														<label>
														<input type="checkbox"> Diners_Club_1 </label>
														<label>
														<input type="checkbox"> Discover </label>
														<label>
														<input type="checkbox"> JCB_1 </label>
														<label>
														<input type="checkbox"> JCB_2 </label>
														<label>
														<input type="checkbox"> Mastercard</label>
														<label>
														<input type="checkbox"> Social_Security_Number_dashes </label>
														<label>
														<input type="checkbox"> Social_Security_Number_spaces </label>
														<label>
														<input type="checkbox"> Visa</label>															
													</div>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Credit Cards</Strong>
													<p>(Newline-delimit the names of the regex aliases)</p>
												</td>
												<td style="text-align: left;">
													
													<textarea class="form-control" rows="8" >Mastercard
Visa
AMEX
Diners_Club_1
Diners_Club_2
Discover
JCB_1
JCB_2</textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>ZIP Extensions</Strong>
													<p>(Treat these extensions as ZIP files. Newline-delimit the names of file extensions.)</p>
												</td>
												<td style="text-align: left;">
													
													<textarea class="form-control" rows="10" >zip
jar
xlsx
docx
pptx
odt
odp
ods
odg</textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Concurrent deployments</Strong>
													<p>(Only for initial deployment, not running)</p>
												</td>
												<td style="vertical-align:middle;" >
													 <input type="text" class="form-control">
												</td>
											</tr>
											
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Log Verbosity </Strong>
												</td>
												<td>
													 <select class = "form-control" >
														<option >Normal</option>
														<option>More Verbose (Not recommended for large (100+) deployments)</option>
														<option>Extremely Verbose (Not recommended for medium (10+) deployments)</option>
														<option>Intensely Verbose (Not recommended for small (3+) deployments)</option>
					
													 </select>
												</td>
											</tr>
											
											
										</tbody>
									</table>
<!--------------------------------------------------------------------------------------------------------------------------------------->									
<!--------------------------------------------------------------------------------------------------------------------------------------->
<!--------------------------------------------------------------------------------------------------------------------------------------->									
									<table class="table table-striped table-hover table-bordered" id="UNIX_filesystem" style="text-align:center;">
							
										<tbody>
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Username</Strong>
												</td>
												<td style="vertical-align:middle;" >
													 <input type="text" class="form-control" placeholder="Profile name" id="username" name="username">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Password</Strong>
												</td>
												<td style="vertical-align:middle;" > 
													 <input type="password" class="form-control" placeholder="Password" id="password" name="password">
												</td>
											</tr>
											
											
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Memory Limit</Strong>
													<p>(as percent of target system's total RAM)</p>
												</td>
												<td style="vertical-align:middle;" >
													 <select class = "form-control input-xsmall" id="Memory_Limit" >
														<option >1%</option>
														<option>2%</option>
														<option>5%</option>
														<option >10%</option>
														<option>15%</option>
														<option>20%</option>
														<option>25%</option>
													
													 </select>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Directories</Strong>
													<p>(Newline-delimit the file extensions in this list)</p>
												</td>
												<td style="text-align: left;">
													<div class="col-md-9">
														<div class="radio-list">
															<label>
															<input type="radio" name="optionsRadios_dir" id="directories" value="option1" > Scan all directories</label>
															<label>
															<input type="radio" name="optionsRadios_dir" id="directories_except" value="option2" checked > Scan all directories except these (recursive) </label>
															<label>
															<input type="radio" name="optionsRadios_dir" id="only" value="option2" > directories except scan the following directories (recursive)</label>
														</div>
													</div>
													<textarea class="form-control" rows="8" >/nfs
/bin
/usr/bin
/usr/local/bin
/lib
/usr/lib
/usr/local/lib
/sbin
/usr/sbin
/usr/local/sbin
/dev
/sys
/proc
/tmp/OpenDLP</textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>File Extensions</Strong>
													<p>(Newline-delimit the file extensions in this list)</p>
												</td>
												<td style="text-align: left;">
													<div class="col-md-9">
														<div class="radio-list">
															<label>
															<input type="radio" name="optionsRadios_file" id="radio_scan_all_file" value="option1" > Scan all files</label>
															<label>
															<input type="radio" name="optionsRadios_file" id="radio_scan_all_file_except" value="option2" checked > Scan all files except files with the following extensions </label>
															<label>
															<input type="radio" name="optionsRadios_file" id="scan_only" value="option2" > Only scan files with the following file extensions</label>
														</div>
													</div>
													<textarea class="form-control" rows="8" >323
386
3g2
3gp
3gp2
3gpp
7z
aac
aca
ace
aif
aifc
aiff
al
amc
ani
arj
asx
au
au3
avi
bmp
bz
bz2
cab
caf
cda
cdda
cdf
cdx
cgi
chm
chr
cmf
cnv
cod
com
ctx
datasource
del
dep
dev
devp
dib
dl_
dll
dmg
don
dpbcc
drv
dsp
elm
exe
flt
fon
frm
gen
gif
gz
hiv
hlp
hpp
hxs
hxx
ico
idl
inf
ink
inl
ism
iso
jfif
jpe
jpeg
jpg
ldf
lex
lib
lic
lng
lnk
lxa
m3u
mdi
mib
mid
miv
mk
mmp
mov
mp2
mp2v
mp3
mp4
mpampe
mpeg
mpegmpv2maw
mpg
mpq
msi
msp
ncb
nlb
nls
nrg
o
obj
ocx
otf
p
pch
pct
pf
pfm
pic
pict
pll
pm
pnf
png
pnt
pntg
ppi
psp
pst
pyc
pyo
pywqpa
qt
qti
qtif
qtl
rar
rb
rbw
rc
rc2
rco
rdd
rmi
rnd
s
scr
sd2
sst
sy_
sys
tar
tgz
tif
tiff
tlb
tmf
ttf
url
uu
vmss
vmdk
vmem
vxd
wav
wax
wma
wmf
wmv
wpc
wpl</textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Regular Expressions</Strong>
													
												</td>
												<td style="text-align: left;"> 
													 <div class="checkbox-list">
														<label>
														<input type="checkbox"> AMEX </label>
														<label>
														<input type="checkbox"> Credit_Card_Track_1 </label>
														<label>
														<input type="checkbox"> Credit_Card_Track_2 </label>
														<label>
														<input type="checkbox"> Credit_Card_Track_Data </label>
														<label>
														<input type="checkbox"> Diners_Club_1 </label>
														<label>
														<input type="checkbox"> Discover </label>
														<label>
														<input type="checkbox"> JCB_1 </label>
														<label>
														<input type="checkbox"> JCB_2 </label>
														<label>
														<input type="checkbox"> Mastercard</label>
														<label>
														<input type="checkbox"> Social_Security_Number_dashes </label>
														<label>
														<input type="checkbox"> Social_Security_Number_spaces </label>
														<label>
														<input type="checkbox"> Visa</label>															
													</div>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Credit Cards</Strong>
													<p>(Newline-delimit the names of the regex aliases)</p>
												</td>
												<td style="text-align: left;">
													
													<textarea class="form-control" rows="8" >Mastercard
Visa
AMEX
Diners_Club_1
Diners_Club_2
Discover
JCB_1
JCB_2</textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>ZIP Extensions</Strong>
													<p>(Treat these extensions as ZIP files. Newline-delimit the names of file extensions.)</p>
												</td>
												<td style="text-align: left;">
													
													<textarea class="form-control" rows="10" >zip
jar
xlsx
docx
pptx
odt
odp
ods
odg</textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Concurrent deployments</Strong>
													<p>(Only for initial deployment, not running)</p>
												</td>
												<td style="vertical-align:middle;" >
													 <input type="text" class="form-control">
												</td>
											</tr>
											
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Log Verbosity </Strong>
												</td>
												<td>
													 <select class = "form-control" >
														<option >Normal</option>
														<option>More Verbose (Not recommended for large (100+) deployments)</option>
														<option>Extremely Verbose (Not recommended for medium (10+) deployments)</option>
														<option>Intensely Verbose (Not recommended for small (3+) deployments)</option>
					
													 </select>
												</td>
											</tr>
											
											
										</tbody>
									</table>
									<!--------------------------------------------------------------------------------------------------------------------------------------->									
<!--------------------------------------------------------------------------------------------------------------------------------------->
<!--------------------------------------------------------------------------------------------------------------------------------------->									
									<table class="table table-striped table-hover table-bordered" id="microsoft_sql_server" style="text-align:center;">
							
										<tbody>
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Username</Strong>
												</td>
												<td style="vertical-align:middle;">
													 <input type="text" class="form-control" placeholder="Profile name" id="username" name="username">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Password</Strong>
												</td>
												<td style="vertical-align:middle;" >
													 <input type="password" class="form-control" placeholder="Password" id="password" name="password">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Windows Domain/Workgroup</Strong>
													<p>(For Windows OS scans (except Windows Share scans): Required.
													For MSSQL DB scans:</p>
													<p>- Specify if you are using OS account</p>
													<p>- Leave blank if using DB account</p>
												</td>
												<td style="vertical-align:middle;" >
													 <input type="text" class="form-control" placeholder="Windows Domain/Workgroup" id="workgroup" name="workgroup">
												</td>
											</tr>
											
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Databases</Strong>
													<p>(Newline-delimit the database in this list)</p>
												</td>
												<td style="text-align: left;">
													<div class="col-md-9">
														<div class="radio-list">
															<label>
															<input type="radio" name="optionsRadios" id="directories" value="option1" > Scan all databases</label>
															<label>
															<input type="radio" name="optionsRadios" id="directories_except" value="option2" checked > Scan all databases except these</label>
															<label>
															<input type="radio" name="optionsRadios" id="only" value="option3" > Only scan the following databases</label>
														</div>
													</div>
													<textarea class="form-control" rows="4" >master
tempdb
model
msdb
pubs
Northwind</textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Tables</Strong>
													<p>(Newline-delimit the table names in this list)</p>
												</td>
												<td style="text-align: left;">
													<div class="col-md-9">
														<div class="radio-list">
															<label>
															<input type="radio" name="optionsRadios_table" id="radio_scan_all_file" value="option4" > Scan all tables</label>
															<label>
															<input type="radio" name="optionsRadios_table" id="radio_scan_all_file_except" value="option5" checked > Scan all tables except these </label>
															<label>
															<input type="radio" name="optionsRadios_table" id="scan_only" value="option6" > Only scan the following tables</label>
														</div>
													</div>
													<textarea class="form-control" rows="5" >syssegments
sysconstraints
dtproperties</textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Columns</Strong>
													<p>(Newline-delimit the column names in this list)</p>
												</td>
												<td style="text-align: left;">
													<div class="col-md-9">
														<div class="radio-list">
															<label>
															<input type="radio" name="optionsRadios_col" id="radio_scan_all_file" value="option7" > Scan all columns</label>
															<label>
															<input type="radio" name="optionsRadios_col" id="radio_scan_all_file_except" value="option8" checked > Scan all columns except these </label>
															<label>
															<input type="radio" name="optionsRadios_col" id="scan_only" value="option9" > Only scan the following columns</label>
														</div>
													</div>
													<textarea class="form-control" rows="4" ></textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Limit columns to X rows</Strong>
													<p>(Use "0" to get all rows)</p>
												</td>
												<td style="text-align: left;">
													
													<input type="text" class="form-control" value="1000"></input>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Regular Expressions</Strong>
													
												</td>
												<td style="text-align: left;"> 
													 <div class="checkbox-list">
														<label>
														<input type="checkbox"> AMEX </label>
														<label>
														<input type="checkbox"> Credit_Card_Track_1 </label>
														<label>
														<input type="checkbox"> Credit_Card_Track_2 </label>
														<label>
														<input type="checkbox"> Credit_Card_Track_Data </label>
														<label>
														<input type="checkbox"> Diners_Club_1 </label>
														<label>
														<input type="checkbox"> Discover </label>
														<label>
														<input type="checkbox"> JCB_1 </label>
														<label>
														<input type="checkbox"> JCB_2 </label>
														<label>
														<input type="checkbox"> Mastercard</label>
														<label>
														<input type="checkbox"> Social_Security_Number_dashes </label>
														<label>
														<input type="checkbox"> Social_Security_Number_spaces </label>
														<label>
														<input type="checkbox"> Visa</label>															
													</div>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Credit Cards</Strong>
													<p>(Newline-delimit the names of the regex aliases)</p>
												</td>
												<td style="text-align: left;">
													
													<textarea class="form-control" rows="8" >Mastercard
Visa
AMEX
Diners_Club_1
Diners_Club_2
Discover
JCB_1
JCB_2</textarea>
												</td>
											</tr>
											
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Concurrent deployments</Strong>
													<p>(Only for initial deployment, not running)</p>
												</td>
												<td style="vertical-align:diddle">
													 <input type="text" class="form-control">
												</td>
											</tr>
											
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Log Verbosity </Strong>
												</td>
												<td>
													 <select class = "form-control" >
														<option >Normal</option>
														<option>More Verbose (Not recommended for large (100+) deployments)</option>
														<option>Extremely Verbose (Not recommended for medium (10+) deployments)</option>
														<option>Intensely Verbose (Not recommended for small (3+) deployments)</option>
					
													 </select>
												</td>
											</tr>
											
											
										</tbody>
									</table>
									
									<!--------------------------------------------------------------------------------------------------------------------------------------->									
<!--------------------------------------------------------------------------------------------------------------------------------------->
<!--------------------------------------------------------------------------------------------------------------------------------------->									
									<table class="table table-striped table-hover table-bordered" id="MySQL" style="text-align:center;">
							
										<tbody>
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Username</Strong>
												</td>
												<td style="vertical-align:diddle" >
													 <input type="text" class="form-control" placeholder="Profile name" id="username" name="username">
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Password</Strong>
												</td>
												<td style="vertical-align:diddle" >
													 <input type="password" class="form-control" placeholder="Password" id="password" name="password">
												</td>
											</tr>
											
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Databases</Strong>
													<p>(Newline-delimit the database in this list)</p>
												</td>
												<td style="text-align: left;">
													<div class="col-md-9">
														<div class="radio-list">
															<label>
															<input type="radio" name="optionsRadios" id="directories" value="option1" > Scan all databases</label>
															<label>
															<input type="radio" name="optionsRadios" id="directories_except" value="option2" checked > Scan all databases except these</label>
															<label>
															<input type="radio" name="optionsRadios" id="only" value="option3" > Only scan the following databases</label>
														</div>
													</div>
													<textarea class="form-control" rows="4" >information_schema
mysql</textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Tables</Strong>
													<p>(Newline-delimit the table names in this list)</p>
												</td>
												<td style="text-align: left;">
													<div class="col-md-9">
														<div class="radio-list">
															<label>
															<input type="radio" name="optionsRadios_table" id="radio_scan_all_file" value="option4" > Scan all tables</label>
															<label>
															<input type="radio" name="optionsRadios_table" id="radio_scan_all_file_except" value="option5" checked > Scan all tables except these </label>
															<label>
															<input type="radio" name="optionsRadios_table" id="scan_only" value="option6" > Only scan the following tables</label>
														</div>
													</div>
													<textarea class="form-control" rows="5" ></textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Columns</Strong>
													<p>(Newline-delimit the column names in this list)</p>
												</td>
												<td style="text-align: left;">
													<div class="col-md-9">
														<div class="radio-list">
															<label>
															<input type="radio" name="optionsRadios_col" id="radio_scan_all_file" value="option7" > Scan all columns</label>
															<label>
															<input type="radio" name="optionsRadios_col" id="radio_scan_all_file_except" value="option8" checked > Scan all columns except these </label>
															<label>
															<input type="radio" name="optionsRadios_col" id="scan_only" value="option9" > Only scan the following columns</label>
														</div>
													</div>
													<textarea class="form-control" rows="4" ></textarea>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Limit columns to X rows</Strong>
													<p>(Use "0" to get all rows)</p>
												</td>
												<td style="text-align: left;">
													
													<input type="text" class="form-control" value="1000"></input>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Regular Expressions</Strong>
													
												</td>
												<td style="text-align: left;"> 
													 <div class="checkbox-list">
														<label>
														<input type="checkbox"> AMEX </label>
														<label>
														<input type="checkbox"> Credit_Card_Track_1 </label>
														<label>
														<input type="checkbox"> Credit_Card_Track_2 </label>
														<label>
														<input type="checkbox"> Credit_Card_Track_Data </label>
														<label>
														<input type="checkbox"> Diners_Club_1 </label>
														<label>
														<input type="checkbox"> Discover </label>
														<label>
														<input type="checkbox"> JCB_1 </label>
														<label>
														<input type="checkbox"> JCB_2 </label>
														<label>
														<input type="checkbox"> Mastercard</label>
														<label>
														<input type="checkbox"> Social_Security_Number_dashes </label>
														<label>
														<input type="checkbox"> Social_Security_Number_spaces </label>
														<label>
														<input type="checkbox"> Visa</label>															
													</div>
												</td>
											</tr>
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Credit Cards</Strong>
													<p>(Newline-delimit the names of the regex aliases)</p>
												</td>
												<td style="text-align: left;">
													
													<textarea class="form-control" rows="8" >Mastercard
Visa
AMEX
Diners_Club_1
Diners_Club_2
Discover
JCB_1
JCB_2</textarea>
												</td>
											</tr>
											
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Concurrent deployments</Strong>
													<p>(Only for initial deployment, not running)</p>
												</td>
												<td style="vertical-align:middle;">
													 <input type="text" class="form-control">
												</td>
											</tr>
											
											
											<tr>
												<td class="td_style" style="vertical-align:middle;">
													<Strong>Log Verbosity </Strong>
												</td>
												<td>
													 <select class = "form-control" >
														<option >Normal</option>
														<option>More Verbose (Not recommended for large (100+) deployments)</option>
														<option>Extremely Verbose (Not recommended for medium (10+) deployments)</option>
														<option>Intensely Verbose (Not recommended for small (3+) deployments)</option>
					
													 </select>
												</td>
											</tr>
											
											
										</tbody>
									</table>
									
								</div>
								<div class="form-actions" id="div_action" style="text-align:center;vertical-align:middle;">
									<button type="submit" class="btn blue">Submit</button>
									<button type="button" class="btn default">Cancel</button>
								</div>
								
							</form>
						</div>
						
					</div>
					<!-- END PORTLET-->
		
	
	</div>			
			
<!--------------------- END CONTENT ------------------------------------------>			
		</div>
	</div>
	
	</div>
	<!-- END CONTENT -->
	<!-- BEGIN QUICK SIDEBAR -->
	

<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div style="width:100%;">
	<%@include file="includes/footer.jsp" %>
</div>
<!-- END FOOTER -->

<script
				src="<c:url value="/resources/global/plugins/jquery.min.js"/>"
				type="text/javascript"></script>
			<script
				src="<c:url value="/resources/global/plugins/jquery-migrate.min.js"/>"
				type="text/javascript"></script>
			<!-- IMPORTANT! Load jquery-ui.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
			<script
				src="<c:url value="/resources/global/plugins/jquery-ui/jquery-ui.min.js"/>"
				type="text/javascript"></script>
			<script
				src="<c:url value="/resources/global/plugins/bootstrap/js/bootstrap.min.js"/>"
				type="text/javascript"></script>
			<script
				src="<c:url value="/resources/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"/>"
				type="text/javascript"></script>
			<script
				src="<c:url value="/resources/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"/>"
				type="text/javascript"></script>
			<script
				src="<c:url value="/resources/global/plugins/jquery.blockui.min.js"/>"
				type="text/javascript"></script>
			<script
				src="<c:url value="/resources/global/plugins/jquery.cokie.min.js"/>"
				type="text/javascript"></script>
			<script
				src="<c:url value="/resources/global/plugins/uniform/jquery.uniform.min.js"/>"
				type="text/javascript"></script>
			<script
				src="<c:url value="/resources/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"/>"
				type="text/javascript"></script>
			<!-- END CORE PLUGINS -->
			<!-- BEGIN PAGE LEVEL SCRIPTS -->
			<script src="<c:url value="/resources/global/scripts/metronic.js"/>"
				type="text/javascript"></script>
			<script
				src="<c:url value="/resources/admin/layout/scripts/layout.js"/>"
				type="text/javascript"></script>
			<script
				src="<c:url value="/resources/admin/layout/scripts/quick-sidebar.js"/>"
				type="text/javascript"></script>
			<script
				src="<c:url value="/resources/admin/layout/scripts/demo.js"/>"
				type="text/javascript"></script>
			<script src="http://maps.google.com/maps/api/js?sensor=true" type="text/javascript"></script>
			<script src="<c:url value="/resources/global/plugins/gmaps/gmaps.min.js"/>" type="text/javascript"></script>
			<script src="<c:url value="/resources/admin/pages/scripts/contact-us.js"/>"></script>
			<!-- END PAGE LEVEL SCRIPTS -->
			<script>
				jQuery(document).ready(function() {
					Metronic.init(); // init metronic core componets
					Layout.init(); // init layout
					QuickSidebar.init(); // init quick sidebar
					Demo.init(); // init demo features 
					ContactUs.init();
				});
			</script>
</body>
</html>