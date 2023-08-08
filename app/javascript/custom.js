document.addEventListener('DOMContentLoaded', function() {
    const dropdownContent = document.querySelector('.dropdown-content');
    let isDropdownOpen = false;

    document.querySelector('.dropdown-button').addEventListener('click', function() {
        isDropdownOpen = !isDropdownOpen;
        if (isDropdownOpen) {
            dropdownContent.style.display = 'block';
        } else {
            dropdownContent.style.display = 'none';
        }
    });

    window.addEventListener('click', function(event) {
        if (!event.target.matches('.dropdown-button')) {
            if (isDropdownOpen) {
                dropdownContent.style.display = 'none';
                isDropdownOpen = false;
            }
        }
    });
});
