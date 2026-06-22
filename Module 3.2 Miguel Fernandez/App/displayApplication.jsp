<%
    String fullName   = request.getParameter("fullName");
    String email      = request.getParameter("email");
    String experience = request.getParameter("experience");
    String position   = request.getParameter("position");
    String empType    = request.getParameter("empType");
    String startDate  = request.getParameter("startDate");
    String comments   = request.getParameter("comments");

    if (comments == null || comments.trim().isEmpty()) {
        comments = "No additional comments provided.";
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Application Submission</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; background:#f4f4f4; }
        .container { background:#fff; padding:25px; max-width:700px; margin:auto; border-radius:8px; }
        h1 { color:#333; }
        table { width:100%; border-collapse:collapse; margin-top:15px; }
        th, td { border:1px solid #ccc; padding:10px; text-align:left; }
        th { background:#2c3e50; color:#fff; }
        caption { font-weight:bold; margin-bottom:10px; font-size:1.1em; }
        .desc { color:#555; }
    </style>
</head>
<body>
    <div class="container">
       
        <h1>Application Submission</h1>
        <p class="desc">Below is a confirmation of the job application information you submitted.
           Each row lists the field description and the corresponding value</p>

        <table>
            <caption>Submitted Job Application Details</caption>
            <tr>
                <th>Field Description</th>
                <th>Record Value</th>
            </tr>

            <%-- 
                 Only Java is inside the scriptlet --%>
            <tr>
                <td>Applicant Full Name</td>
                <td><%= fullName %></td>
            </tr>
            <tr>
                <td>Email Address</td>
                <td><%= email %></td>
            </tr>
            <tr>
                <td>Years of Experience</td>
                <td><%= experience %></td>
            </tr>
            <tr>
                <td>Position Applying For</td>
                <td><%= position %></td>
            </tr>
            <tr>
                <td>Employment Type Desired</td>
                <td><%= empType %></td>
            </tr>
            <tr>
                <td>Available Start Date</td>
                <td><%= startDate %></td>
            </tr>
            <tr>
                <td>Additional Comments</td>
                <td><%= comments %></td>
            </tr>
        </table>

        <p class="desc">Thank you for applying</p>
    </div>
</body>
</html>