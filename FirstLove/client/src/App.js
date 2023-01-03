import './App.css';
import NavBar from "./NavBar"
import CardPage from "./CardPage"
import React, {useState} from 'react'
import {Route, Routes} from "react-router-dom"
import Login from "./Login"
import Signup from "./Signup"


function App() {

  const [user, setUser] = useState(null)
  return (
    <div>
      <NavBar user={user} setUser={setUser}/>
        <Routes>
          <Route path="/" element={<App/>}/>
          <Route path="/login" element={<Login/>}/>
          <Route path="/signup" element={<Signup/>}/>
          {/* <Route path="/contact" element={<Contact />}/>
          <Route path="/create" element={<FurnForm />}/>
          <Route path="/login" element={<Login />}/> */}
        </Routes>  
      <CardPage/>
    </div>
  );
}

export default App;
