import React from 'react';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import Home from './pages/Home';
import Destino from './pages/Destino';
import Promo from './pages/Promo';
import Contato from './pages/Contato';
import Geral from './Components/Geral'
import './Css/Estilos.css';


function App() {
  return (

<>
<BrowserRouter>
<Routes>
  <Route element={<Geral/>}>

  <Route path="/" element={<Home />} />
  <Route path="/destino" element={<Destino />} />
  <Route path="/promo" element={<Promo />} />
  <Route path="/contato" element={<Contato />} />

  </Route>
</Routes> 

</BrowserRouter>

</>     
      
  );
}

export default App;