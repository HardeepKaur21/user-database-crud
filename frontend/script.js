const loadUserBtn = document.getElementById("loadUserBtn");
const userList = document.getElementById("userList");
const addUserBtn = document.getElementById("addUserBtn");

loadUserBtn.addEventListener("click", async () => {
  try {
    const response = await fetch("http://localhost:3000/users");
    const users = await response.json();

    userList.innerHTML = "";

    users.forEach((user) => {
      const li = document.createElement("li");
      li.textContent = `${user.first_name} ${user.surname} (${user.email})`;
      userList.appendChild(li);
    });
  } catch (error) {
    console.log("Error fetching users:", error);
  }
});

addUserBtn.addEventListener("click", async () => {
  const newUser = {
    title: "Ms",
    first_name: "Jane",
    surname: "Doe",
    mobile: "0877777777",
    email: "jane.doe@email.com",
  };
  try {
    const res = await fetch("http://localhost:3000/users", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(newUser),
    });
    const data = res.json();
    alert("User added!");
    console.log(data);
  } catch (error) {
    console.log("Error adding user: ", error);
  }
});
