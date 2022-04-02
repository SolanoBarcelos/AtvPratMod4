import React from "react";

export default function Promo() {
  return (

    <div>

      <main>

        <h2>Cadastro</h2>

        <center>

        <form  accesskey="#">
          <label for="name">
            <span>Digite seu nome abaixo:</span>
            <input type="text" id="nome" name="nome" />
          </label>

          <label for="email">
            <span>Digire seu e-mail abaixo:</span>
            <input type="email" id="email" name="email" />
          </label>

          <input id="btnCadastrar" type="submit" value="CADASTRAR" />

        </form>

        <div id="direita">
        <h1>Promoções</h1>

        <p>Efetue seu cadastro para receber nossas promoções por e-mail</p>

        <center>
          <img width="400px" src="./img/cadastro.jpg" alt="Cadastro" />
        </center>

        </div>

        </center>


      </main>

    </div>
  );
}