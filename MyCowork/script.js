var requestOptions = {
  method: 'GET',
};

let a = "";

const url = "https://api.geoapify.com/v2/places?categories=commercial.supermarket&filter=rect%3A10.716463143326969%2C48.755151258420966%2C10.835314015356737%2C48.680903341613316&limit=20&apiKey=7b7e121a8e34486e917908fef5729958"

fetch(url, requestOptions)
  .then(response => response.json())
  .then(result => a = result)
  .catch(error => console.log('error', error));


