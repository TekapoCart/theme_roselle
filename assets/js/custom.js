// Shrinking LOGO
const navbar = document.querySelector('#roselle-navbar'),
    navbarPH = document.querySelector('#roselle-navbar-placeholder'),
    logoWP = document.querySelector('.logo-wrapper'),
    topLogo = document.querySelector('.top-logo'),
    stickyPos = navbar.offsetHeight;
function logoShrink() {
    if (window.pageYOffset < stickyPos) {
        navbar.classList.remove('navbar-fixed-top');
        logoWP.classList.remove('shrink');
        topLogo.classList.remove('shrink');
        navbarPH.style.height = 0;
    } else {
        navbar.classList.add('navbar-fixed-top');
        logoWP.classList.add('shrink');
        topLogo.classList.add('shrink');
        navbarPH.style.height = stickyPos;
    }
}

// Moving God
const movingArea = document.querySelector('#moving-area'),
    movingItem = document.querySelector('#moving-item'),
    movingPos = movingArea !== null ? movingArea.offsetTop + movingArea.offsetHeight / 2 : 0,
    desktopDialogue = document.querySelector('#desktop-dialogue'),
    mobileDialogue = document.querySelector('#mobile-dialogue');
function startMoving() {
    if (movingPos > 0 && window.scrollY + window.innerHeight > movingPos) {
        movingItem.classList.add('enlarge');
        desktopDialogue.style.visibility = 'visible';
        mobileDialogue.style.display = 'block';
    } else {
        // movingItem.classList.remove('enlarge');
    }
}

window.onscroll = function() {
    logoShrink();
    startMoving();
};
window.onresize = function() {
    logoShrink();
    startMoving();
};

(function() {

    logoShrink();

})();