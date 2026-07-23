<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Smart Complaint Portal</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <!-- Simple Centered Header -->
    <nav class="navbar">
        <div class="nav-brand">⚡ Smart Complaint Portal</div>
    </nav>

    <!-- Main Hero Section -->
    <div class="hero-container">
        <span class="hero-tag">✨ Next-Gen Service Management</span>
        <h1 class="hero-title">Smart Home Resolution Portal</h1>
        <p class="hero-subtitle">
            Register, track, and resolve issues with your smart home appliances instantly. Get real-time updates and seamless technician assistance right at your fingertips.
        </p>
        <a href="index.jsp" class="btn-get-started">
            Get Started ➔
        </a>
    </div>

    <!-- Smart Appliances Photo Slider -->
    <div class="slider-section">
        <button class="prev-btn" onclick="changeSlide(-1)">❮</button>
        <button class="next-btn" onclick="changeSlide(1)">❯</button>

        <div class="slider-container">
            <!-- Slide 1 -->
            <div class="slide active">
                <img src="https://images.unsplash.com/photo-1558002038-1055907df827?auto=format&fit=crop&w=1200&q=80" alt="Smart Home Hub">
                <div class="slide-caption">
                    <h3>Smart Home Automation & IoT Hubs</h3>
                    <p>Instant diagnosis and remote technical support for your connected ecosystem.</p>
                </div>
            </div>

            <!-- Slide 2 -->
            <div class="slide">
                <img src="https://images.unsplash.com/photo-1593359677879-a4bb92f829d1?auto=format&fit=crop&w=1200&q=80" alt="Smart TV">
                <div class="slide-caption">
                    <h3>Smart Entertainment Systems</h3>
                    <p>Hassle-free service requests for display, audio, and connectivity errors.</p>
                </div>
            </div>

            <!-- Slide 3 -->
            <div class="slide">
                <img src="https://images.unsplash.com/photo-1584622650111-993a426fbf0a?auto=format&fit=crop&w=1200&q=80" alt="Kitchen Appliances">
                <div class="slide-caption">
                    <h3>Modern Kitchen Appliances</h3>
                    <p>On-demand technician booking for smart refrigerators and microwaves.</p>
                </div>
            </div>

            <!-- Slide 4 -->
            <div class="slide">
                <img src="https://images.unsplash.com/photo-1626806787461-102c1bfaaea1?auto=format&fit=crop&w=1200&q=80" alt="Washing Machine">
                <div class="slide-caption">
                    <h3>Washing & Climate Control</h3>
                    <p>Quick ticket generation and status tracking for ACs & Washing Machines.</p>
                </div>
            </div>
        </div>

        <!-- Indicator Dots -->
        <div class="dots-container">
            <span class="dot active" onclick="setSlide(0)"></span>
            <span class="dot" onclick="setSlide(1)"></span>
            <span class="dot" onclick="setSlide(2)"></span>
            <span class="dot" onclick="setSlide(3)"></span>
        </div>
    </div>

    <script src="js/app.js"></script>
</body>
</html>