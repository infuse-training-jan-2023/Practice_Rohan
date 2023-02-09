const currentTime = () => {
  let date = new Date();
  let hours = date.getHours();
  let minutes = date.getMinutes();
  let seconds = date.getSeconds();
  hours = hours < 10 ? "0" + hours : hours;
  minutes = minutes < 10 ? "0" + minutes : minutes;
  seconds = seconds < 10 ? "0" + seconds : seconds;
  document.getElementById("time").innerHTML =
    hours + " : " + minutes + " : " + seconds;
};
setInterval(() => {
  currentTime();
}, 1000);

currentTime();
