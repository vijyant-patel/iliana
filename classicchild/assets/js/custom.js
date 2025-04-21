document.addEventListener("DOMContentLoaded", function () {
    const menuToggle = document.getElementById("mobile-menu-toggle");
    const mobileMenu = document.getElementById("mobile-menu");

    if (menuToggle && mobileMenu) {
        menuToggle.addEventListener("click", function () {
            mobileMenu.classList.toggle("open");
        });
    }
});

const toggleMobileSearchBar = () => {
    const searchBar = document.querySelector(".search-bar-wrapper");
    searchBar.classList.toggle("active");
}
