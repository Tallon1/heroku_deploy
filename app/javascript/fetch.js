class Fetch {
    async getCurrent(input) {
      const myKey = "018f010a6f5c869280fd4b4bc565bcd6";
  
      //make request to url
  
      const response = await fetch(
        `https://api.openweathermap.org/data/2.5/weather?q=${input}&appid=${myKey}`
      );
  
      const data = await response.json();
  
      console.log(data);
  
      return data;
    }
  }