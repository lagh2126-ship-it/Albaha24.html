document.addEventListener("DOMContentLoaded", () => {

    const menuBtn = document.querySelector(".menu-btn");
    const menu = document.querySelector(".menu ul");

    menuBtn?.addEventListener("click", () => {
        menu.classList.toggle("show");
    });

    const startScreen = document.getElementById("startScreen");
    const welcomeScreen = document.getElementById("welcomeScreen");
    const mainContent = document.getElementById("mainContent");
    const welcomeBtn = document.getElementById("welcomeBtn");
    const startTourBtn = document.getElementById("startTourBtn");
    const backToTop = document.getElementById("backToTop");
    const newsLinks = document.querySelectorAll(".show-news");
    const newsItems = document.querySelectorAll(".news-item");
    const backButtons = document.querySelectorAll(".back-to-table");
    const navLinks = document.querySelectorAll(".nav-list li a");

    document.getElementById("welcomeBtn").onclick = () => {
        startScreen.style.display = "none";
        welcomeScreen.style.display = "flex";
    };

    document.getElementById("startTourBtn").onclick = () => {
        welcomeScreen.style.display = "none";
        mainContent.style.display = "block";
    };

    // زر العودة للأعلى
    const topBtn = document.getElementById("topBtn");

    window.addEventListener("scroll", () => {
        // Fade effect
        document.querySelectorAll(".fade").forEach(section => {
            if (section.getBoundingClientRect().top < window.innerHeight / 1.2) {
                section.classList.add("show");
            }
        });

        // زر العودة للأعلى
        if (document.documentElement.scrollTop > 200) {
            topBtn.style.display = "block";
        } else {
            topBtn.style.display = "none";
        }
    });

    topBtn?.addEventListener("click", () => {
        window.scrollTo({ top: 0, behavior: "smooth" });
    });

});
