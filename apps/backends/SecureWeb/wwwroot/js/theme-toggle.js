document.addEventListener("DOMContentLoaded", function () {
    const themeToggle = document.getElementById("themeToggle");
    const currentTheme = localStorage.getItem("theme") || "light";

    applyTheme(currentTheme);

    themeToggle.addEventListener("click", () => {
        const newTheme = document.body.classList.contains("dark") ? "light" : "dark";
        applyTheme(newTheme);
        localStorage.setItem("theme", newTheme);
    });

    function applyTheme(theme) {
        document.body.classList.remove("light", "dark");
        document.body.classList.add(theme);

        const navbar = document.querySelector(".navbar");
        navbar.classList.remove("navbar-light", "navbar-dark");
        if (theme === "dark") {
            navbar.classList.add("navbar-dark", "bg-dark");
        } else {
            navbar.classList.add("navbar-light", "bg-white");
        }
    }
});
