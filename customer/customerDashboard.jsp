<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Dashboard - Smart Portal</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; }
        
        body { 
            background: #0d0a1a; 
            background-image: radial-gradient(circle at top right, rgba(147, 51, 234, 0.15), transparent 40%),
                              radial-gradient(circle at bottom left, rgba(79, 70, 229, 0.15), transparent 40%);
            color: #ffffff; 
            min-height: 100vh;
        }

        /* --- FIXED NAVBAR --- */
        .navbar { 
            display: flex; 
            justify-content: space-between; 
            align-items: center; 
            padding: 18px 5%; 
            background: rgba(18, 12, 38, 0.85); 
            backdrop-filter: blur(12px);
            border-bottom: 1px solid rgba(168, 85, 247, 0.2);
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .nav-brand { font-size: 22px; font-weight: 800; color: #ffffff; letter-spacing: 0.5px; }
        .nav-brand span { color: #c084fc; }

        .nav-links { display: flex; gap: 15px; align-items: center; }
        .nav-links a { 
            text-decoration: none; 
            color: #cbd5e1; 
            font-size: 14px; 
            font-weight: 600; 
            padding: 8px 16px; 
            border-radius: 8px; 
            transition: all 0.3s ease; 
        }
        .nav-links a:hover, .nav-links a.active { color: #ffffff; background: rgba(168, 85, 247, 0.2); }
        .nav-links a.logout-btn { background: rgba(239, 68, 68, 0.15); color: #f87171; border: 1px solid rgba(239, 68, 68, 0.3); }
        .nav-links a.logout-btn:hover { background: rgba(239, 68, 68, 0.3); }

        /* --- DASHBOARD CONTAINER --- */
        .container { max-width: 1100px; margin: 40px auto; padding: 0 20px; }

        .welcome-banner { 
            background: linear-gradient(135deg, rgba(30, 20, 60, 0.9), rgba(15, 10, 35, 0.9)); 
            border: 1px solid rgba(168, 85, 247, 0.3); 
            border-radius: 20px; 
            padding: 35px; 
            margin-bottom: 30px; 
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5);
        }
        .welcome-banner h1 { font-size: 30px; color: #ffffff; font-weight: 700; }
        .welcome-banner h1 span { color: #c084fc; }
        .welcome-banner p { color: #94a3b8; font-size: 15px; margin-top: 8px; }

        /* --- STATS GRID --- */
        .stats-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(240px, 1fr)); gap: 20px; margin-bottom: 35px; }
        .stat-card { 
            background: rgba(22, 16, 48, 0.7); 
            border: 1px solid rgba(168, 85, 247, 0.2); 
            border-radius: 16px; 
            padding: 24px; 
            text-align: center;
            backdrop-filter: blur(10px);
        }
        .stat-card h3 { font-size: 36px; font-weight: 800; margin-bottom: 4px; }
        .stat-card p { font-size: 13px; color: #94a3b8; text-transform: uppercase; letter-spacing: 1px; }

        /* --- ACTION CARDS --- */
        .actions-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 20px; }
        .action-card { 
            background: rgba(22, 16, 48, 0.7); 
            border: 1px solid rgba(168, 85, 247, 0.25); 
            border-radius: 16px; 
            padding: 28px; 
            text-decoration: none; 
            color: inherit; 
            transition: all 0.3s ease; 
            display: block;
        }
        .action-card:hover { 
            transform: translateY(-6px); 
            border-color: #a855f7; 
            box-shadow: 0 12px 30px rgba(168, 85, 247, 0.25); 
            background: rgba(30, 20, 60, 0.85);
        }
        .action-icon { font-size: 28px; margin-bottom: 12px; display: inline-block; }
        .action-card h3 { color: #e9d5ff; font-size: 18px; margin-bottom: 8px; font-weight: 700; }
        .action-card p { color: #94a3b8; font-size: 13px; line-height: 1.6; }
    </style>
</head>
<body>

    <!-- NAVBAR -->
    <nav class="navbar">
        <div class="nav-brand">⚡ Smart<span>Portal</span></div>
        <div class="nav-links">
            <a href="customerDashboard.jsp" class="active">Dashboard</a>
            <a href="raiseComplaint.jsp">Raise Issue</a>
            <a href="complaintHistory.jsp">History</a>
            <a href="profile.jsp">Profile</a>
            <a href="../index.jsp" class="logout-btn">Logout</a>
        </div>
    </nav>

    <!-- CONTENT -->
    <div class="container">
        <div class="welcome-banner">
            <h1>Welcome Back, <span>Customer!</span> 👋</h1>
            <p>Manage your smart appliances, raise support requests, and track real-time resolution updates.</p>
        </div>

        <div class="stats-grid">
            <div class="stat-card">
                <h3 style="color: #c084fc;">03</h3>
                <p>Total Complaints</p>
            </div>
            <div class="stat-card">
                <h3 style="color: #facc15;">01</h3>
                <p>In Progress</p>
            </div>
            <div class="stat-card">
                <h3 style="color: #4ade80;">02</h3>
                <p>Resolved</p>
            </div>
        </div>

        <div class="actions-grid">
            <a href="raiseComplaint.jsp" class="action-card">
                <div class="action-icon">➕</div>
                <h3>Raise New Complaint</h3>
                <p>Facing issues with Smart TV, AC, or Home Hub? Register a new ticket instantly.</p>
            </a>
            <a href="complaintHistory.jsp" class="action-card">
                <div class="action-icon">📋</div>
                <h3>View Complaint History</h3>
                <p>Check active status, technician details, and history of all submitted requests.</p>
            </a>
            <a href="profile.jsp" class="action-card">
                <div class="action-icon">👤</div>
                <h3>Account Profile</h3>
                <p>Manage your account settings, update contact number, and service address.</p>
            </a>
        </div>
    </div>

</body>
</html>