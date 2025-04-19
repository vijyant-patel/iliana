document.addEventListener("DOMContentLoaded", function () {
    const menuToggle = document.getElementById("mobile-menu-toggle");
    const mobileMenu = document.getElementById("mobile-menu");

    menuToggle.addEventListener("click", function () {
        mobileMenu.classList.toggle("open");
    });
});


