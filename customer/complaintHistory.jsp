<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Complaint History - Smart Portal</title>
    <link rel="stylesheet" href="../css/style.css">
    <style>
        .container { max-width: 1000px; margin: 40px auto; padding: 0 20px; }
        .page-header { margin-bottom: 25px; }
        .page-header h2 { color: #c084fc; font-size: 26px; }
        .table-card { background: rgba(18, 10, 36, 0.85); border: 1px solid rgba(168, 85, 247, 0.3); border-radius: 16px; overflow: hidden; backdrop-filter: blur(16px); }
        table { width: 100%; border-collapse: collapse; text-align: left; }
        th, td { padding: 16px 20px; font-size: 14px; }
        th { background: rgba(15, 10, 30, 0.9); color: #c084fc; font-weight: 700; border-bottom: 1px solid rgba(168, 85, 247, 0.25); }
        td { color: #e9d5ff; border-bottom: 1px solid rgba(168, 85, 247, 0.15); }
        tr:hover { background: rgba(168, 85, 247, 0.05); }
        .badge { display: inline-block; padding: 4px 10px; border-radius: 20px; font-size: 12px; font-weight: 700; }
        .badge-pending { background: rgba(234, 179, 8, 0.15); color: #facc15; border: 1px solid rgba(234, 179, 8, 0.3); }
        .badge-resolved { background: rgba(34, 197, 94, 0.15); color: #4ade80; border: 1px solid rgba(34, 197, 94, 0.3); }
        .btn-view { color: #c084fc; text-decoration: none; font-weight: 600; border: 1px solid rgba(168, 85, 247, 0.4); padding: 5px 12px; border-radius: 8px; transition: all 0.2s; }
        .btn-view:hover { background: rgba(168, 85, 247, 0.2); }
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
        <div class="page-header">
            <h2>Your Complaint Tickets</h2>
        </div>

        <div class="table-card">
            <table>
                <thead>
                    <tr>
                        <th>Ticket ID</th>
                        <th>Category</th>
                        <th>Title</th>
                        <th>Date</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>#CMP-1001</td>
                        <td>Smart TV</td>
                        <td>Display flicker issue</td>
                        <td>2026-07-20</td>
                        <td><span class="badge badge-resolved">Resolved</span></td>
                        <td><a href="complaintDetails.jsp?id=1001" class="btn-view">Details</a></td>
                    </tr>
                    <tr>
                        <td>#CMP-1002</td>
                        <td>Climate Control & AC</td>
                        <td>Cooling error code E4</td>
                        <td>2026-07-22</td>
                        <td><span class="badge badge-pending">In Progress</span></td>
                        <td><a href="complaintDetails.jsp?id=1002" class="btn-view">Details</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

</body>
</html>