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
