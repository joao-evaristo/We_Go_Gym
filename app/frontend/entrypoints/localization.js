if ("geolocation" in navigator) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var latitude = position.coords.latitude;
      var longitude = position.coords.longitude;
      console.log({latitude})
      console.log({longitude})
      document.getElementById("lat").value = latitude
      document.getElementById("lng").value = longitude
    });
  } else {
    /* geolocation IS NOT available */
    document.getElementById("location").innerHTML = "Geolocation is not available in your browser.";
  }