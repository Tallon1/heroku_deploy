class Fetch {
    async getCurrent(input) {  
      //make request to url
      const response = await fetch(
        'http://api.weatherapi.com/v1/current.json?key=78ea0243f8594dc8ad0134113220604&q=Dublin&aqi=no'
      );
  
      const data = await response.json();
  
      console.log(data);
  
      return data;
    }
  }