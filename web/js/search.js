// document.getElementById('searchIcon').onclick = function() {
//     document.getElementById('search').style.display = 'block';
//     document.getElementById('clear').style.display = 'block';
//     document.getElementById('search').focus();
//     document.getElementById('searchIcon').style.display = 'none';
//   }
//   document.getElementById('clear').onclick = function() {
//     document.getElementById('searchIcon').style.display = 'block';
//     document.getElementById('search').style.display = 'none';
//     document.getElementById('clear').style.display = 'none';
//   }

// const input = document.getElementById("searchInput");
// const searchBtn = document.getElementById("searchBtn");

// const expand = () => {
//     searchBtn.classList.toggle("close");
//     input.classList.toggle("square");
// };

// searchBtn.addEventListener("click", expand); 
$('.search-button').on('click', function() {
  $('.toggle-target-container').animate({width:'toggle'},500); //350 ở đây là tốc đô (ms)
  $('.search-group').toggleClass('close-search open-search');
  $("#search-icon").toggleClass('fa-search fa-times');
});