



fetch("https://mars.nasa.gov/rss/api/?feed=weather&category=msl&feedtype=json")
.then(function(response) { 
  return response.json()
})
.then(function(data) {   

  recentSol = data["soles"][0]["sol"]
  // do stuff with `data`, call second `fetch`
  return fetch(`https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?api_key=DEMO_KEY&sol=${recentSol}`)
})
.then(function(response) { 
  return response.json(); 
})
.then(function(data) {
  // do stuff with `data`
  console.log(data["photos"])
})
.catch(function(error) { 
  console.log('Requestfailed', error) 
});