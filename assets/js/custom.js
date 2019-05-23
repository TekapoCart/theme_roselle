// Shrinking LOGO
const navbar = document.querySelector('#roselle-navbar'),
    navbarPH = document.querySelector('#roselle-navbar-placeholder'),
    logoWP = document.querySelector('.logo-wrapper'),
    stickyPos = navbar.offsetHeight;
function logoShrink() {
    if (window.pageYOffset < stickyPos) {
        navbar.classList.remove('navbar-fixed-top');
        logoWP.classList.remove('shrink');
        navbarPH.style.height = 0;
    } else {
        navbar.classList.add('navbar-fixed-top');
        logoWP.classList.add('shrink');
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

    let pack;
    if (typeof navigator.scriptList == 'undefined') {
        navigator.scriptList = [];
    }

    pack = [
        '/js/msc/class-msc-sidebar.js',
        '/js/msc/wcl.js',
        '/js/msc/class-msc-select.js'
    ];

    for (var i=-1,l=pack.length;++i<l;) {
        var path = pack[i], script;
        if (navigator.scriptList.indexOf(path) != -1) continue;
        navigator.scriptList.push(path);
        script = document.createElement('script');
        document.head.appendChild(script);
        script.async = true;
        script.src = path;
    }

    if (document.currentScript) {
        pack = document.currentScript;
        pack.parentNode.removeChild(pack);
    }
})();