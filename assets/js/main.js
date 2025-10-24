function changeWeather() {
  var input = document.getElementById('weather-input');
  var img = document.getElementById('weather-img');
  img.src = "https://wttr.in/" + input.value + ".png";
  img.alt = "Weather for " + input.value;
  var weatherDisplay = document.getElementById('weather-display');
  weatherDisplay.innerHTML = input.value;
  input.value = "";
}

// Store the elements in variables first
const weatherBtn = document.getElementById('weather-btn');
const weatherForm = document.getElementById('weather-form');

// Only run the code IF both elements were found on the page
if (weatherBtn && weatherForm) {
  weatherBtn.onclick = function () {
    changeWeather();
  };

  weatherForm.onkeypress = function(event) {
    // Note: I'm using event.key instead of the deprecated event.keyCode
    if (event.key === 'Enter') {
      event.preventDefault();
      weatherBtn.click();
    }
  };

  const weatherOptions = "Bg,temperature=200,lang=es";
  var weatherImgAlt = "Current weather in ";
}