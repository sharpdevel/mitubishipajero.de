// Please see documentation at https://docs.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

var modalPanel = $('#modalImagePanel');
var img = $('.img-thumbnail:not(.not-modal)');
var modalImg = $('#modalImage');
var captionText = $('#modalCaption');
img.click(function() {
    modalPanel.css('display', 'block');
    modalImg.prop('src', this.src);
    captionText.html(this.alt);
});

// Get the <span> element that closes the modal
var closeButton = $('#modalClose');

// When the user clicks on <span> (x), close the modal
closeButton.click(function() {
    modalPanel.css('display', 'none');
});

// Scroll-spy for the sticky section chip bar on long model pages
(function () {
    var chips = Array.prototype.slice.call(
        document.querySelectorAll('main p > a[href^="#"]'));
    if (chips.length > 0) {
        var byId = {};
        var sections = [];
        chips.forEach(function (chip) {
            var target = document.getElementById(chip.getAttribute('href').substring(1));
            if (target) {
                byId[target.id] = chip;
                sections.push(target);
            }
        });
        var setActive = function (id) {
            chips.forEach(function (chip) { chip.classList.remove('active'); });
            if (id && byId[id]) {
                byId[id].classList.add('active');
            }
        };
        var spy = function () {
            var current = null;
            // The section whose heading is closest above the reading line wins.
            var line = window.scrollY + window.innerHeight * 0.25;
            sections.forEach(function (section) {
                var top = section.getBoundingClientRect().top + window.scrollY;
                if (top <= line) {
                    current = section.id;
                }
            });
            setActive(current);
        };
        window.addEventListener('scroll', spy, { passive: true });
        spy();
    }

    // Back-to-top on any page longer than ~2.5 screens
    if (document.documentElement.scrollHeight > window.innerHeight * 2.5) {
        var button = document.createElement('button');
        button.id = 'backToTop';
        button.type = 'button';
        button.textContent = '↑';
        button.setAttribute('aria-label',
            document.documentElement.lang === 'de' ? 'Nach oben' : 'Back to top');
        document.body.appendChild(button);
        button.addEventListener('click', function () {
            window.scrollTo({ top: 0 });
        });
        var toggle = function () {
            button.classList.toggle('visible', window.scrollY > 600);
        };
        window.addEventListener('scroll', toggle, { passive: true });
        toggle();
    }
})();
