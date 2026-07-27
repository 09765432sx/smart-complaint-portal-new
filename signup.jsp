<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Account - Smart Complaint Portal</title>
    
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Plus Jakarta Sans', sans-serif;
        }

        body {
            background-color: #080511;
            background-image: 
                radial-gradient(at 10% 10%, rgba(147, 51, 234, 0.2) 0px, transparent 45%),
                radial-gradient(at 90% 90%, rgba(192, 132, 252, 0.12) 0px, transparent 50%),
                radial-gradient(at 50% 50%, rgba(126, 34, 206, 0.08) 0px, transparent 60%);
            color: #f3f4f6;
            min-height: 100vh;
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 18px 45px;
            background: rgba(15, 10, 30, 0.75);
            border-bottom: 1px solid rgba(168, 85, 247, 0.25);
            backdrop-filter: blur(16px);
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .nav-brand {
            font-size: 22px;
            font-weight: 800;
            color: #c084fc;
            letter-spacing: -0.5px;
            text-shadow: 0 0 15px rgba(192, 132, 252, 0.4);
            text-decoration: none;
        }

        .auth-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: calc(100vh - 70px);
            padding: 30px 20px;
        }

        .auth-card {
            background: rgba(18, 10, 36, 0.85);
            backdrop-filter: blur(16px);
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.6), 0 0 25px rgba(147, 51, 234, 0.2);
            border: 1px solid rgba(168, 85, 247, 0.3);
            width: 100%;
            max-width: 450px;
        }

        .auth-card h2 {
            font-size: 26px;
            color: #c084fc;
            text-align: center;
            font-weight: 700;
        }

        .subtitle {
            font-size: 13px;
            color: #a78bfa;
            text-align: center;
            margin-top: 6px;
            margin-bottom: 24px;
        }

        .form-group {
            margin-bottom: 18px;
        }

        .form-group label {
            display: block;
            font-size: 13px;
            margin-bottom: 6px;
            color: #e9d5ff;
            font-weight: 600;
        }

        .form-control {
            width: 100%;
            padding: 12px 16px;
            background: rgba(8, 5, 17, 0.8);
            border: 1px solid rgba(168, 85, 247, 0.3);
            border-radius: 12px;
            color: #ffffff;
            font-size: 14px;
            outline: none;
            transition: all 0.25s ease;
        }

        select.form-control {
            color: #ffffff;
            cursor: pointer;
        }

        select.form-control option {
            background-color: #120a24;
            color: #ffffff;
        }

        .form-control:focus {
            border-color: #c084fc;
            box-shadow: 0 0 15px rgba(168, 85, 247, 0.35);
        }

        .btn-primary {
            width: 100%;
            padding: 14px;
            background: linear-gradient(135deg, #9333ea, #7e22ce);
            color: #ffffff;
            font-size: 15px;
            font-weight: 700;
            border: none;
            border-radius: 12px;
            cursor: pointer;
            box-shadow: 0 4px 15px rgba(147, 51, 234, 0.4);
            transition: all 0.3s ease;
            margin-top: 10px;
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(168, 85, 247, 0.6);
            background: linear-gradient(135deg, #a855f7, #9333ea);
        }

        .auth-footer {
            text-align: center;
            margin-top: 22px;
            font-size: 13px;
            color: #a78bfa;
        }

        .auth-footer a {
            color: #c084fc;
            text-decoration: none;
            font-weight: 700;
            margin-left: 5px;
            transition: all 0.2s;
        }

        .auth-footer a:hover {
            color: #ffffff;
            text-shadow: 0 0 8px rgba(192, 132, 252, 0.8);
        }
    </style>
</head>
<body>

    <nav class="navbar">
        <a href="index.jsp" class="nav-brand">⚡ Smart Portal</a>
    </nav>

    <div class="auth-container">
        <div class="auth-card">
            <h2>Create Account</h2>
            <p class="subtitle">Join Smart Portal to manage your service tickets</p>

            <form id="signupForm" action="index.jsp" method="POST" onsubmit="return validateSignup()">
                <div class="form-group">
                    <label for="fullname">Full Name</label>
                    <input type="text" id="fullname" name="fullname" class="form-control" placeholder="John Doe" required>
                </div>

                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" name="email" class="form-control" placeholder="user@example.com" required>
                </div>

                <div class="form-group">
                    <label for="phone">Phone Number</label>
                    <input type="tel" id="phone" name="phone" class="form-control" placeholder="9876543210" required>
                </div>

                <!-- SELECT ROLE OPTION (CUSTOMER / AGENT) -->
                <div class="form-group">
                    <label for="role">Select Role</label>
                    <select id="role" name="role" class="form-control" required>
                        <option value="" disabled selected>-- Select Your Role --</option>
                        <option value="Customer">Customer</option>
                        <option value="Agent">Agent</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" class="form-control" placeholder="••••••••" required>
                </div>

                <button type="submit" class="btn-primary">Register Account</button>
            </form>

            <div class="auth-footer">
                Already have an account? <a href="index.jsp">Sign In</a>
            </div>
        </div>
    </div>

    <script>
        function validateSignup() {
            var name = document.getElementById("fullname").value;
            var email = document.getElementById("email").value;
            var phone = document.getElementById("phone").value;
            var role = document.getElementById("role").value;
            var password = document.getElementById("password").value;

            if (name.trim() === "" || email.trim() === "" || phone.trim() === "" || role === "" || password.trim() === "") {
                alert("Please fill in all required fields.");
                return false;
            }

            if (phone.length < 10) {
                alert("Please enter a valid phone number.");
                return false;
            }

            if (password.length < 6) {
                alert("Password must be at least 6 characters long.");
                return false;
            }

            alert("Account created successfully as " + role + "! Redirecting to Login...");
            return true;
        }
    </script>

</body>
</html>