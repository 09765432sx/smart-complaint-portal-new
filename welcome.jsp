<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome - Smart Complaint Portal</title>
    
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

        /* Navbar */
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
        }

        /* Hero Section */
        .hero-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
            padding: 50px 20px 20px;
        }

        .hero-title {
            font-size: 52px;
            font-weight: 800;
            background: linear-gradient(135deg, #ffffff 30%, #c084fc 70%, #a855f7 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-bottom: 25px;
            line-height: 1.2;
        }

        .btn-get-started {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 16px 40px;
            background: linear-gradient(135deg, #9333ea, #7e22ce);
            color: #ffffff;
            font-size: 16px;
            font-weight: 700;
            text-decoration: none;
            border-radius: 14px;
            box-shadow: 0 10px 30px rgba(147, 51, 234, 0.45);
            transition: all 0.3s ease;
            margin-bottom: 40px;
        }

        .btn-get-started:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 35px rgba(147, 51, 234, 0.7);
            background: linear-gradient(135deg, #a855f7, #9333ea);
        }

        /* PPT-Style Box Carousel Slider */
        .slider-section {
            max-width: 800px;
            margin: 0 auto 50px;
            padding: 0 20px;
            position: relative;
        }

        .slider-container {
            position: relative;
            border-radius: 22px;
            overflow: hidden;
            border: 1px solid rgba(168, 85, 247, 0.35);
            box-shadow: 0 25px 50px rgba(0, 0, 0, 0.8), 0 0 30px rgba(147, 51, 234, 0.25);
            background: rgba(18, 10, 36, 0.85);
            height: 400px;
        }

        .slide {
            display: none;
            position: absolute;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            transition: opacity 0.6s ease-in-out;
        }

        .slide.active {
            display: block;
        }

        .slide img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: block;
        }

        .slide-caption {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            background: linear-gradient(to top, rgba(8, 5, 17, 0.95), rgba(8, 5, 17, 0.3) 75%, transparent);
            padding: 30px 25px 20px;
            color: #f3f4f6;
            text-align: center;
        }

        .slide-caption h3 {
            font-size: 20px;
            color: #c084fc;
            font-weight: 700;
            margin-bottom: 6px;
        }

        .slide-caption p {
            font-size: 13px;
            color: #cbd5e1;
        }

        /* Navigation Arrows */
        .prev-btn, .next-btn {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            background: rgba(15, 10, 30, 0.85);
            border: 1px solid rgba(168, 85, 247, 0.4);
            color: #c084fc;
            font-size: 20px;
            width: 46px;
            height: 46px;
            border-radius: 50%;
            cursor: pointer;
            z-index: 10;
            display: flex;
            align-items: center;
            justify-content: center;
            backdrop-filter: blur(8px);
            transition: all 0.25s ease;
        }

        .prev-btn:hover, .next-btn:hover {
            background: #9333ea;
            color: #ffffff;
            box-shadow: 0 0 20px rgba(147, 51, 234, 0.6);
        }

        .prev-btn { left: 35px; }
        .next-btn { right: 35px; }

        /* Slide Dots */
        .dots-container {
            display: flex;
            justify-content: center;
            gap: 8px;
            margin-top: 16px;
        }

        .dot {
            width: 10px;
            height: 10px;
            background: rgba(168, 85, 247, 0.25);
            border-radius: 50%;
            cursor: pointer;
            transition: 0.3s ease;
        }

        .dot.active {
            background: #c084fc;
            width: 24px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(192, 132, 252, 0.6);
        }
    </style>
</head>
<body>

    <nav class="navbar">
        <div class="nav-brand">⚡ Smart Portal</div>
    </nav>

    <div class="hero-container">
        <h1 class="hero-title">Smart Complaint Portal</h1>
        
        <a href="index.jsp" class="btn-get-started">
            Get Started Now →
        </a>
    </div>

    <!-- PPT Style Auto Slider Container -->
    <div class="slider-section">
        <div class="slider-container">
            <!-- Slide 1 -->
            <div class="slide active">
                <img src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=1000" alt="Laptops & Computers">
                <div class="slide-caption">
                    <h3>Laptops & Computers</h3>
                    <p>Quick resolution for hardware and software issues</p>
                </div>
            </div>

            <!-- Slide 2 -->
            <div class="slide">
                <img src="https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=1000" alt="Smartphones">
                <div class="slide-caption">
                    <h3>Smartphones & Tablets</h3>
                    <p>Instant support for mobile network & device repair</p>
                </div>
            </div>

            <!-- Slide 3 -->
            <div class="slide">
                <img src="https://images.unsplash.com/photo-1593359677879-a4bb92f829d1?w=1000" alt="Smart TVs">
                <div class="slide-caption">
                    <h3>Smart TVs & Display</h3>
                    <p>Track complaints for screen, audio, and smart features</p>
                </div>
            </div>

            <!-- Slide 4 -->
            <div class="slide">
                <img src="https://images.unsplash.com/photo-1585338107529-13afc5f02586?w=1000" alt="Home Appliances">
                <div class="slide-caption">
                    <h3>Home Electronics</h3>
                    <p>Hassle-free service booking for all smart home appliances</p>
                </div>
            </div>

            <!-- Navigation Arrows -->
            <button class="prev-btn" onclick="changeSlide(-1)">❮</button>
            <button class="next-btn" onclick="changeSlide(1)">❯</button>
        </div>

        <!-- Navigation Dots -->
        <div class="dots-container">
            <span class="dot active" onclick="currentSlide(0)"></span>
            <span class="dot" onclick="currentSlide(1)"></span>
            <span class="dot" onclick="currentSlide(2)"></span>
            <span class="dot" onclick="currentSlide(3)"></span>
        </div>
    </div>

    <!-- Slider JavaScript -->
    <script>
        let slideIndex = 0;
        let slides = document.getElementsByClassName("slide");
        let dots = document.getElementsByClassName("dot");
        let slideTimer;

        function showSlide(index) {
            if (index >= slides.length) { slideIndex = 0; }
            if (index < 0) { slideIndex = slides.length - 1; }

            for (let i = 0; i < slides.length; i++) {
                slides[i].classList.remove("active");
                dots[i].classList.remove("active");
            }

            slides[slideIndex].classList.add("active");
            dots[slideIndex].classList.add("active");
        }

        function changeSlide(step) {
            slideIndex += step;
            showSlide(slideIndex);
            resetTimer();
        }

        function currentSlide(index) {
            slideIndex = index;
            showSlide(slideIndex);
            resetTimer();
        }

        function autoSlides() {
            slideIndex++;
            showSlide(slideIndex);
        }

        function resetTimer() {
            clearInterval(slideTimer);
            slideTimer = setInterval(autoSlides, 3500); // Change image every 3.5 seconds
        }

        // Start Auto-play
        slideTimer = setInterval(autoSlides, 3500);
    </script>

</body>
</html>