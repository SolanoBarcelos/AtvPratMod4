import React from "react";

export default function Destino() {
    return (

      <main>


        <div className="container">

            <h2>Destinos</h2>

            <div className="destinos">
          
                <div className="lugares">
                    <img width="280px"  height="230px" src="./img/OuroPreto.jpg" alt="Ouro Preto" />
                    <p>Ouro Preto</p>
                </div>

                <div className="lugares">
                    <img width="280px"  height="230px" src="./img/Capitolio (2).jpg" alt="Capitólio" />
                    <p>Capitólio</p>
                </div>

                <div className="lugares">
                    <img width="280px" height="230px" src="./img/BH.jpg" alt="Belo Horizonte" />
                    <p>Belo Horizonte</p>
                </div>

                <div className="lugares">
                    <img width="280px" height="230px" src="./img/SerraCipo.jpg" alt="Serra do Cipó" />
                    <p>Serra do Cipó</p>
                </div>

             </div>

        </div>  
      
  </main>

    );
  }