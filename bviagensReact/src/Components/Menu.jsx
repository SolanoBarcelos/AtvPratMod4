import React from "react"
import { Container } from "react-bootstrap";
import { Navbar } from "react-bootstrap";
import { Nav } from "react-bootstrap";


export default function Menu() {
    return(

        <div>

        {/* <nav id="menu">
            <Link id="link" to="/">Inicio</Link>  {"  "}
            <Link id="link" to="destino">Destinos</Link>  {"  "}
            <Link id="link" to="promo">Promoções</Link>  {"  "}
            <Link id="link" to="contato">Fale Conosco</Link>
        </nav> */}

            <Navbar bg="light" expand="lg">
                <Container>
                    <Navbar.Brand href="/"><img width="180px" heigth="150px" src="./img/LogoBarcelosViagens.png" alt="Logo-PaginaInicial"/></Navbar.Brand>
                    <Navbar.Toggle aria-controls="basic-navbar-nav" />
                    <Navbar.Collapse id="basic-navbar-nav">
                        <Nav className="me-auto">
                            <Nav.Link href="destino">Destinos</Nav.Link>
                            <Nav.Link href="promo">Promoções</Nav.Link>
                            <Nav.Link href="contato">Fale Conosco</Nav.Link>
                        </Nav>
                    </Navbar.Collapse>
                 </Container>
            </Navbar>

        </div>
        


    );
}