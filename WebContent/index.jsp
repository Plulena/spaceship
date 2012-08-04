<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Spaceship</title>
	<script language="JavaScript">
		var xmlHttp;
		
		// AJAX XMLHTTP ������Ʈ
		function createXMLHttpRequest() {
			if(window.ActiveXObject) {
				xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
			} else if(window.XMLHttpRequest) {
				xmlHttp = new XMLHttpRequest();
			}
		}
		
		// Ű�� �Է����� �� ó��
		function onKeyUp() {
			// ����Ű ������ ��� ���
			if( event.keyCode == 13 ) {
				request();
			}
		}
		
		// ����� ����ϱ� ���� result.jsp�� ����� ��û
		function request() {
			createXMLHttpRequest();
			param = orderform.order.value;
			var url = "result.jsp?order=" + encodeURIComponent(param);
			xmlHttp.onreadystatechange = result;
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		
		// result.jsp�κ��� �޾ƿ� ���(html)�� 'content' div�� ���
		function result() {
			if( xmlHttp.readyState == 4 ) {
				if( xmlHttp.status == 200 ) {
					temp = xmlHttp.responseText;
					document.getElementById("content").innerHTML = temp;
				}
			}
		}
	</script>
	<script type="text/javascript" src="http://webplayer.unity3d.com/download_webplayer-3.x/3.0/uo/UnityObject.js"></script>
	<!-- 
	<script type="text/javascript">
	<!--
	function GetUnity() {
		if (typeof unityObject != "undefined") {
			return unityObject.getObjectById("unityPlayer");
		}
		return null;
	}
	if (typeof unityObject != "undefined") {
		unityObject.embedUnity("unityPlayer", "WebPlayer.unity3d", 400, 300);
	}
	-->
	</script>
</head>
<body>

<!-- ����Ƽ �÷��̾� -->
<!--><table width=1024 align="center">
<tr>
<td align="center">
<div id="unityPlayer">
	<div class="missing">
		<a href="http://unity3d.com/webplayer/" title="Unity Web Player. Install now!">
			<img alt="Unity Web Player. Install now!" src="http://webplayer.unity3d.com/installation/getunity.png" width="193" height="63" />
		</a>
	</div>
</div>
</td>
</tr>
</table>
-->

<!-- �Է� �κ� -->
<form method="post" name="orderform">
<div style="text-align:center">
	<!-- ������ ������ �ؽ�Ʈ�ڽ�. Ű�� ���������� onKeyUp �Լ� ȣ�� -->
	<input type="text" name="order" size=100 onkeyup="onKeyUp()" />
	<!-- �ؽ�Ʈ�ڽ��� 1���� ����Ű ������ �� refresh�� �Ǽ� ������ �ؽ�Ʈ�ڽ��� �ϳ� �� ����� -->
	<input type="text" name="hiddentext" size=0 style="display:none" />
</div>
</form>

<!-- ���⿡ ������� ��µȴ� -->
<div id="content" style="text-align:center">
</div>

</body>

</html>