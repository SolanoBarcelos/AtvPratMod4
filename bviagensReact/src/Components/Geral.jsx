import { Outlet } from "react-router-dom"
import Menu from "./Menu"
import FooterNovo from "./FooterNovo"

const Geral = () => {
    return (

   <div>

        <Menu/>
        <Outlet/>
        <FooterNovo/>

    </div>

    

    )
    
}

export default Geral;