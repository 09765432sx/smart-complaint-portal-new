<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Profile - Smart Portal</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>

    <nav class="navbar">
        <div class="nav-brand">⚡ Smart Portal</div>
        <div class="nav-links">
            <a href="customerDashboard.jsp" class="btn-nav-outline">Dashboard</a>
            <a href="raiseComplaint.jsp" class="btn-nav-outline">Raise Issue</a>
            <a href="complaintHistory.jsp" class="btn-nav-outline">History</a>
            <a href="profile.jsp" class="btn-nav-outline" style="color:#c084fc;">Profile</a>
            <a href="../index.jsp" class="btn-nav-outline" style="border-color: rgba(239, 68, 68, 0.4); color: #f87171;">Logout</a>
        </div>
    </nav>

    <div class="auth-container" style="min-height: calc(100vh - 100px);">
        <div class="auth-card" style="max-width: 500px;">
            <h2>User Profile</h2>
            <p class="subtitle">Update your personal and service contact details</p>

            <form action="../UpdateProfileServlet" method="POST">
                <div class="form-group">
                    <label>Full Name</label>
                    <input type="text" name="fullname" class="form-control" value="John Doe" required>
                </div>

                <div class="form-group">
                    <label>Email Address</label>
                    <input type="email" name="email" class="form-control" value="john@example.com" readonly style="opacity: 0.7;">
                </div>

                <div class="form-group">
                    <label>Phone Number</label>
                    <input type="tel" name="phone" class="form-control" value="+91 98765 12345" required>
                </div>

                <div class="form-group">
                    <label>Service Address</label>
                    <textarea name="address" class="form-control" rows="3" required style="resize: vertical;">123, Green Park, Main City Road</textarea>
                </div>

                <button type="submit" class="btn-primary">Update Profile</button>
            </form>
        </div>
    </div>

</body>
</html>