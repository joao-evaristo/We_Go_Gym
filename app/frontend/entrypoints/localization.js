if ("geolocation" in navigator) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var latitude = position.coords.latitude;
      var longitude = position.coords.longitude;
      document.getElementById("location").innerHTML = "Latitude: " + latitude + "<br>Longitude: " + longitude;
    });
  } else {
    /* geolocation IS NOT available */
    document.getElementById("location").innerHTML = "Geolocation is not available in your browser.";
  }