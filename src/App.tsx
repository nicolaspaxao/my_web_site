import './App.css'
import { BrowserRouter, Route, Routes } from "react-router-dom"
import { HomePage } from "./Pages/Home/HomePage"


function App() {

  return (
    <>
      <BrowserRouter>
        <main>
          <Routes>
            <Route path="/my_web_site" element={<HomePage />} />
          </Routes>
        </main>
      </BrowserRouter>
    </>
  )
}

export default App
