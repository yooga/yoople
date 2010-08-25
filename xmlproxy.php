<?
/* Secured XML HTTP Get Proxy for XMLHttpRequest
   Restricted to external site access only
   Author: Newton Chan
   Usage: xmlproxy.php?u=http://...
*/
if(isset($_GET['u']) && !empty($_GET['u']) && strpos($_GET['u'],'http://')===0 && strpos($_GET['u'],'http://'.$_SERVER["SERVER_ADDR"])===false && strpos($_GET['u'],'http://'.$_SERVER["SERVER_NAME"])===false)
{
	if(ini_get('allow_url_fopen'))
	{
		if($content=file_get_contents(str_replace(' ','+',$_GET['u'])))
		{
			header('Content-type: text/xml;charset=UTF-8');
			echo $content;
		}
		else echo "Unable to access remote file.";
	}
	else echo "Remote file access not supported.";
}
?>
