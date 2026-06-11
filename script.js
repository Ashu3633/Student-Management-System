function addStudent() {

    let name = document.getElementById("studentName").value;

    if(name === "") return;

    let li = document.createElement("li");

    li.innerHTML =
        name +
        " <button onclick='this.parentElement.remove()'>Delete</button>";

    document.getElementById("studentList").appendChild(li);

    document.getElementById("studentName").value = "";
}
