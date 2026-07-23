<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Smart Complaint Portal</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <nav class="navbar">
        <div class="nav-brand">⚡ Smart Portal</div>
    </nav>

    <div class="auth-container">
        <div class="auth-card">
            <h2>Create Account</h2>
            <p class="subtitle">Register to start managing your complaints</p>

            <form action="SignupServlet" method="POST">
                <div class="form-group">
                    <label>Full Name</label>
                    <input type="text" name="fullname" class="form-control" placeholder="John Doe" required>
                </div>

                <div class="form-group">
                    <label>Email Address</label>
                    <input type="email" name="email" class="form-control" placeholder="user@example.com" required>
                </div>

                <div class="form-group">
                    <label>Password</label>
                    <input type="password" name="password" class="form-control" placeholder="••••••••" required>
                </div>

                <!-- Select Role (Customer / Agent) -->
                <div class="form-group">
                    <label>Select Role</label>
                    <select name="role" class="form-control" required style="cursor: pointer;">
                        <option value="" disabled selected>-- Choose Role --</option>
                        <option value="Customer">Customer</option>
                        <option value="Agent">Agent</option>
                    </select>
                </div>

                <button type="submit" class="btn-primary">Register Now</button>
            </form>

            <div class="auth-footer">
                Already have an account? <a href="index.jsp">Sign In</a>
            </div>
        </div>
    </div>

</body>
</html>