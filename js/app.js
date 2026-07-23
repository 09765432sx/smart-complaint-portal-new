// Image Slider Functionality
let currentSlide = 0;

function showSlide(index) {
    const slides = document.querySelectorAll('.slide');
    const dots = document.querySelectorAll('.dot');
    
    if (slides.length === 0) return;

    if (index >= slides.length) {
        currentSlide = 0;
    } else if (index < 0) {
        currentSlide = slides.length - 1;
    } else {
        currentSlide = index;
    }

    slides.forEach((slide, i) => {
        slide.classList.remove('active');
        if (i === currentSlide) {
            slide.classList.add('active');
        }
    });

    dots.forEach((dot, i) => {
        dot.classList.remove('active');
        if (i === currentSlide) {
            dot.classList.add('active');
        }
    });
}

function changeSlide(direction) {
    showSlide(currentSlide + direction);
}

function setSlide(index) {
    showSlide(index);
}

// Auto Slide every 4 seconds
setInterval(() => {
    if (document.querySelectorAll('.slide').length > 0) {
        changeSlide(1);
    }
}, 4000);