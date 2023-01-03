import React, { useState } from "react";


export default function Login({setUser}) {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");

  function handlesubmit(e){
    e.preventDefault();
    fetch("http://localhost:3000/login", {
      method: "POST",
      headers: {
        "Content-Type": "application/json"},
      body: JSON.stringify({username, password}),
  }).then((r) => {
    if (r.ok) {
      r.json().then((user) => setUser(user));
    }
  })}

  return (
    <div>
      <h1>Mason</h1>




    </div>
  )};