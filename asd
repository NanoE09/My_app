var myHeaders = new Headers();
myHeaders.append("Content-Type", "application/x-www-form-urlencoded");
myHeaders.append("Authorization", "Basic " + btoa("grupo10" + ":" + "00TeWe4nfi"));

var urlencoded = new URLSearchParams();
urlencoded.append("grant_type", "client_credentials");
urlencoded.append("scope", "openid");

var requestOptions = {
  method: 'POST',
  headers: myHeaders,
  body: urlencoded,
  redirect: 'follow'
};

fetch("https://auth-server.igamalab.cl/oauth2/token", requestOptions)
  .then(response => response.text())
  .then(result => console.log(result))
  .catch(error => console.log('error', error));
