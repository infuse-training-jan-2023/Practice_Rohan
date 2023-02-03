const user = {
    name: "Piyush Sharma",
    designation: "Senior Software Engineer",
    company: "Infuse Consulting",
    hobbies: ["Reading", "Listening to music", "Collecting stamps"]
}

/**
 * Use destructuting to log the following
*/
const printUserProfile = ({name,designation,company,hobbies}=user) => {
    let hobby = hobbies.map(hobby => hobby);
    console.log(`${name} is a ${designation} at ${company}. He likes ${hobby[0]}, ${hobby[1]} and ${hobby[2]}`);
}
printUserProfile()

