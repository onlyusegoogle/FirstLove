import {useState, useEffect} from "react"

export default function HomePage() {
  const [products, setProducts] = useState([]);

  useEffect(() => {
    fetch("http://localhost:3000/products")
    .then((res) => res.json())
    .then((data) => {
      setProducts(data);
    })
  }, [])

  return(
    <div>
      <h1>hi</h1>
      {products.map((product) => {
        return (
          <div>
            <img src={product.image} alt="" style={{maxWidth: "250px", maxHeight: "250" }}/>
            <h1>{product.name}</h1>
            <h1>{product.desc}</h1>
            <h1>${product.price}</h1>
          </div>
        )
      })}
    </div>
  )
  }