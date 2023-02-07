function submitForm (){
    const firstName = document.getElementById('f-name')
    const lastName = document.getElementById('l-name')
    const country = document.getElementById('dropwon-option')
    const subject = document.getElementById('msg')
    	
    const fname = document.getElementById('fname').value;
    const lname = document.getElementById('lname').value;
    const dropdown = document.getElementById('country').value;
    const message = document.getElementById('subject').value;

    firstName.innerHTML = fname
    lastName.innerHTML = lname
    country.innerHTML = dropdown
    subject.innerHTML = message
}