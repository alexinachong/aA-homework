document.addEventListener("DOMContentLoaded", function(){
  const canvas = document.getElementById("mycanvas");
  canvas.width = 500;
  canvas.height = 500;
  
  const ctx = canvas.getContext("2d");
  
  ctx.fillStyle = "navy";
  ctx.fillRect(0, 0, 500, 500);
  
  ctx.beginPath();
  ctx.arc(200, 200, 50, 0, 2*Math.PI, true);
  ctx.strokeStyle = "white";
  ctx.lineWidth = 5;
  ctx.stroke();
  ctx.fillStyle = "gold";
  ctx.fill();
});
