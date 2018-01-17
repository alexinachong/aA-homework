console.log("Hello from the JavaScript console!");

// Your AJAX request here
$.ajax({
      type: 'GET',
      url: "http://api.openweathermap.org/data/2.5/weather?q=NY,NY&appid=8a988759ba120606aa3838271a0bd997",
      success(data) {
        console.log("We have your weather!")
        console.log(data);
      },
      error() {
        console.error("An error occurred.");
      },
   });


// Add another console log here, outside your AJAX request
console.log("THE AJAX has been dispatched.");