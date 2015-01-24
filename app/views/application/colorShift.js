function colorShift(nColor) {
  if (nColor < 0 && -100000 <= nColor) {
    holder.select("rect")
      .style("fill", function() { return d3.rgb(255, 255-(-1 * nColor)/500 % 255, 255-(-1 * nColor)/500 % 255) } )
  }
  else if (nColor <= -100000) {
    holder.select("rect")
      .style("fill", function() { return d3.rgb(255, 0, 0) } )
  }
  else if (0 <= nColor < 50000){
  holder.select("rect")
    .style("fill", function() { return d3.rgb(110 + (128-nColor/2000 % 128),  110 + (128-nColor/2000 % 128) + 128 , 110 + (128-nColor/1000 % 128)) } )
  }
  // fade from grey to green  
  else if (50000 <= nColor < 100000){
  holder.select("rect")
    .style("fill", function() { return d3.rgb( (128-nColor/2000 % 128), 173 + (128-nColor/2000 % 128) +128 ,  (128-nColor/2000 % 128)) } )
  }  
  // fade from grey to green
  else if (100000 <= nColor < 177500){
  holder.select("rect")
    .style("fill", function() { return d3.rgb(128-nColor/2000 % 128, 128 , 128-nColor/2000 % 128) } )
  }
  else if(255000 <= nColor){
    holder.select("rect")
      .style("fill", function() { return d3.rgb(0, 128 , 0) } )
  }  
  }