<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Dashboard - Smart Complaint Portal</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar">
        <div class="nav-brand">SmartPortal ✨</div>
        <div class="nav-user">
            <span>Welcome, <strong>Customer</strong></span>
            <a href="../index.jsp" class="btn-logout">Logout</a>
        </div>
    </nav>

    <div class="dashboard-container">
        <!-- Sidebar Navigation -->
        <aside class="sidebar">
            <ul>
                <li class="active"><a href="#">📊 Overview</a></li>
                <li><a href="#new-complaint">➕ New Complaint</a></li>
                <li><a href="#my-complaints">📋 My Complaints</a></li>
            </ul>
        </aside>

        <!-- Main Content Area -->
        <main class="main-content">
            
            <!-- Quick Stats Grid -->
            <div class="stats-grid">
                <div class="stat-card purple-glow">
                    <h3>Total Raised</h3>
                    <p class="stat-number" id="totalCount">12</p>
                </div>
                <div class="stat-card yellow-glow">
                    <h3>In Progress</h3>
                    <p class="stat-number" id="pendingCount">3</p>
                </div>
                <div class="stat-card green-glow">
                    <h3>Resolved</h3>
                    <p class="stat-number" id="resolvedCount">9</p>
                </div>
            </div>

            <!-- New Complaint Section -->
            <section id="new-complaint" class="content-card">
                <h2>Lodge a New Complaint</h2>
                <form id="complaintForm">
                    <div class="form-group">
                        <label>Category</label>
                        <select id="category" class="form-control">
                            <option value="Technical">Technical Issue</option>
                            <option value="Billing">Billing & Payment</option>
                            <option value="Service">Service Delay</option>
                            <option value="Other">Other Query</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label>Subject</label>
                        <input type="text" id="subject" class="form-control" placeholder="Brief summary of issue" required>
                    </div>

                    <div class="form-group">
                        <label>Detailed Description</label>
                        <textarea id="description" class="form-control" rows="4" placeholder="Explain your complaint in detail..." required></textarea>
                    </div>

                    <button type="button" onclick="submitComplaintAJAX()" class="btn-primary">Submit Complaint (AJAX)</button>
                </form>
                <div id="responseMessage" class="response-msg"></div>
            </section>

            <!-- Complaint History Table -->
            <section id="my-complaints" class="content-card" style="margin-top: 30px;">
                <h2>My Complaint History</h2>
                <div class="table-responsive">
                    <table class="data-table">
                        <thead>
                            <tr>
                                <th>Ticket ID</th>
                                <th>Category</th>
                                <th>Subject</th>
                                <th>Status</th>
                                <th>Date</th>
                            </tr>
                        </thead>
                        <tbody id="complaintTableBody">
                            <tr>
                                <td>#TCK-1092</td>
                                <td>Technical</td>
                                <td>Server connection timeout</td>
                                <td><span class="badge badge-pending">In Progress</span></td>
                                <td>21 Jul 2026</td>
                            </tr>
                            <tr>
                                <td>#TCK-1088</td>
                                <td>Billing</td>
                                <td>Double deduction refund</td>
                                <td><span class="badge badge-success">Resolved</span></td>
                                <td>18 Jul 2026</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </section>

        </main>
    </div>

    <script src="../js/app.js"></script>
</body>
</html>