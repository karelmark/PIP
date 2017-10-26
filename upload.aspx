<%@ Page Language="VB" AutoEventWireup="false" CodeFile="upload.aspx.vb" Inherits="upload" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Uploader</title>
    <script language='Javascript' type="text/javascript">
      function addFile() {
            var ni = document.getElementById("fileDiv");
            var objFileCount = document.getElementById("fileCount");
            var num = (document.getElementById("fileCount").value - 1) + 2;
            objFileCount.value = num;
            var newdiv = document.createElement("div");
            var divIdName = "file" + num + "Div";
            newdiv.setAttribute("id", divIdName);
            newdiv.innerHTML = '<input type="file" name="attachment" id="attachment"/><a href="#" onclick="javascript:removeFile(' + divIdName + ');">Remove </a>';
            ni.appendChild(newdiv);
      }


      function removeFile(divName) {
            var d = document.getElementById("fileDiv");
      d.removeChild(divName);
}
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <input type="file" name="attachment" runat="server" id="attachment" onchange="document.getElementById('moreUploadsLink').style.display = 'block';" />
      <input type="hidden" value="0" id="fileCount" />
      <div id="fileDiv">
      </div>
      <div id="moreUploadsLink" style="display:none ">
            <a href="javascript:addFile();">Attach another File</a>
      </div>
      <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
        <br />
        <asp:Label ID="lblStatus" runat="server"></asp:Label>
        for single file upload set div id="moreUploadsLink" style="display: none"
</div>
    </form>
</body>
</html>