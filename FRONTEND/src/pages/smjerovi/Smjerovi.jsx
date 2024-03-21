import { useEffect } from 'react';
import Container from 'react-bootstrap/Container';
import SmjerService from '../../services/SmjerService';


export default function Smjerovi(){

    async function dohvatiSmjerove(){
        await SmjerService.get();
    }

   useEffect(()=>{
    dohvatiSmjerove
   },[]);

    return(
        <>
       <Container>
        Pregled smjerova
       </Container>
        </>
    );
}