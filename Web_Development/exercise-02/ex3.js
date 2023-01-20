const currentTime = () => {
    const date = new Date();
    document.getElementById('time').innerHTML = date.getHours() + " : " + date.getMinutes() + " : " + date.getSeconds();
}
setInterval(() => {
    currentTime()
}, 1000);

currentTime()