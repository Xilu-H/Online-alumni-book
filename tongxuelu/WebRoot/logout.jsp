<%@ page contentType="text/html; charset=gb2312" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page session="true"%>

<script>
	       var win=window;
            while(win.parent!=window.top)
            {
            	win=win.parent;
            }
            win.parent.location.replace("login.jsp");  
</script>