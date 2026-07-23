<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Raise Complaint - Smart Portal</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>

    <nav class="navbar">
        <div class="nav-brand">⚡ Smart Portal</div>
        <div class="nav-links">
            <a href="customerDashboard.jsp" class="btn-nav-outline">Dashboard</a>
            <a href="raiseComplaint.jsp" class="btn-nav-outline" style="color:#c084fc;">Raise Issue</a>
            <a href="complaintHistory.jsp" class="btn-nav-outline">History</a>
            <a href="profile.jsp" class="btn-nav-outline">Profile</a>
            <a href="../index.jsp" class="btn-nav-outline" style="border-color: rgba(239, 68, 68, 0.4); color: #f87171;">Logout</a>
        </div>
    </nav>

    <div class="auth-container" style="min-height: calc(100vh - 100px);">
        <div class="auth-card" style="max-width: 550px;">
            <h2>Register Complaint</h2>
            <p class="subtitle">Tell us about the issue you are facing</p>

            <form action="../RaiseComplaintServlet" method="POST">
                <div class="form-group">
                    <label>Appliance Category</label>
                    <select name="category" class="form-control" required style="cursor: pointer;">
                        <option value="" disabled selected>-- Select Appliance --</option>
                        <option value="Smart Home Automation / IoT Hub">Smart Home Automation / IoT Hub</option>
                        <option value="Smart TV & Entertainment">Smart TV & Entertainment</option>
                        <option value="Kitchen Appliances (Fridge/Oven)">Kitchen Appliances (Fridge/Oven)</option>
                        <option value="Climate Control & AC">Climate Control & AC</option>
                        <option value="Washing Machine">Washing Machine</option>
                    </select>
                </div>

                <div class="form-group">
                    <label>Issue Title</label>
                    <input type="text" name="title" class="form-control" placeholder="e.g. Smart Hub not connecting to Wi-Fi" required>
                </div>

                <div class="form-group">
                    <label>Detailed Description</label>
                    <textarea name="description" class="form-control" rows="4" placeholder="Describe the problem clearly..." required style="resize: vertical;"></textarea>
                </div>

                <div class="form-group">
                    <label>Preferred Visit Date</label>
                    <input type="date" name="preferredDate" class="form-control" required style="color-scheme: dark;">
                </div>

                <button type="submit" class="btn-primary">Submit Complaint</button>
            </form>
        </div>
    </div>

</body>
</html>