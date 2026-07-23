<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Complaint Details - Smart Portal</title>
    <link rel="stylesheet" href="../css/style.css">
    <style>
        .container { max-width: 800px; margin: 40px auto; padding: 0 20px; }
        .details-card { background: rgba(18, 10, 36, 0.85); border: 1px solid rgba(168, 85, 247, 0.3); border-radius: 20px; padding: 35px; backdrop-filter: blur(16px); }
        .ticket-header { display: flex; justify-content: space-between; align-items: center; border-bottom: 1px solid rgba(168, 85, 247, 0.2); padding-bottom: 15px; margin-bottom: 20px; }
        .ticket-header h2 { color: #c084fc; font-size: 22px; }
        .badge { padding: 6px 14px; border-radius: 20px; font-size: 13px; font-weight: 700; }
        .badge-pending { background: rgba(234, 179, 8, 0.15); color: #facc15; border: 1px solid rgba(234, 179, 8, 0.3); }
        .info-row { margin-bottom: 15px; }
        .info-row label { display: block; font-size: 12px; color: #a78bfa; margin-bottom: 3px; font-weight: 600; }
        .info-row p { font-size: 15px; color: #f3f4f6; }
    </style>
</head>
<body>

    <nav class="navbar">
        <div class="nav-brand">⚡ Smart Portal</div>
        <div class="nav-links">
            <a href="customerDashboard.jsp" class="btn-nav-outline">Dashboard</a>
            <a href="raiseComplaint.jsp" class="btn-nav-outline">Raise Issue</a>
            <a href="complaintHistory.jsp" class="btn-nav-outline" style="color:#c084fc;">History</a>
            <a href="profile.jsp" class="btn-nav-outline">Profile</a>
            <a href="../index.jsp" class="btn-nav-outline" style="border-color: rgba(239, 68, 68, 0.4); color: #f87171;">Logout</a>
        </div>
    </nav>

    <div class="container">
        <div class="details-card">
            <div class="ticket-header">
                <h2>Ticket #CMP-1002</h2>
                <span class="badge badge-pending">In Progress</span>
            </div>

            <div class="info-row">
                <label>Appliance Category</label>
                <p>Climate Control & AC</p>
            </div>

            <div class="info-row">
                <label>Issue Title</label>
                <p>Cooling error code E4</p>
            </div>

            <div class="info-row">
                <label>Description</label>
                <p>The unit stops cooling after 10 minutes and displays error code E4. Sound level increases during operation.</p>
            </div>

            <div class="info-row">
                <label>Assigned Agent</label>
                <p style="color: #c084fc; font-weight: 600;">Agent Rahul Sharma (+91 98765 43210)</p>
            </div>

            <div style="margin-top: 25px;">
                <a href="complaintHistory.jsp" class="btn-nav-outline" style="display: inline-block;">⬅ Back to History</a>
            </div>
        </div>
    </div>

</body>
</html>