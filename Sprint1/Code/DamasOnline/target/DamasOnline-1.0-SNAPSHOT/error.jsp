<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error</title>
    <link rel="stylesheet" href="./css/error.css"/>
</head>
<body>
    <div class="container">
        <h1>Error</h1>
        <%  
            String error = request.getParameter("error");
            //Dependiendo del tipo de error lanzaremos el mensaje correspondiente
            switch(error){
                case "locked":
        %>        
                    <p>Your account has been temporarily locked due to multiple failed login attempts. Please try again later.</p>
        <%
                break;
                
                case "empty":
        %>        
                    <p>You have not entered any credentials. Please try again later.</p>
        <%
                break;
                
                case "invalid":
        %>        
                    <p>Incorrect credentials. Please try again later.</p>
        <%
                break;   
            }
        %>          

        <a href="login.jsp">Return Login</a>
    </div>
</body>
</html>

