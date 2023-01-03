import Login from "./Login";
import {Link} from "react-router-dom"
import App from "./App"
import Signup from "./Signup"

export default function NavBar({user, setUser}){


  return(
    <div className="navbar">
      <h1 className="navbar-title">First Love</h1>
      <div className="links">
          <Link to="/" element={<App/>}>HomePage</Link>
          <Link to="/login" element={<Login/>}>Login</Link>
          <Link to="/signup" element={<Signup/>}>Signup</Link>
      </div>
    </div>
) 
}