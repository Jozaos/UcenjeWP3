import { Button, Col, Container, Form, Row } from "react-bootstrap";
import { Link, Route, useNavigate } from "react-router-dom";
import { RoutesNames } from "../../constants";
import SmjerService from "../../services/SmjerService";


export default function SmjeroviDodaj(){

const navigate=useNavigate();

    async function dodaj(smjer){
        const odgovor= await SmjerService.post(smjer);
        if(odgovor.greska){
            console.log(odgovor.poruka);
            alert('Pogledaj konzolu');
            return;
        }
        navigate(RoutesNames.SMJER_PREGLED);
    }

    function obradiSubmit(e){
        e.preventDefault();
        // alert('Dodajem smjer');

        const podaci = new FormData(e.target);

        const smjer = {
            naziv: podaci.get('naziv'),
            trajanje: parseInt(podaci.get('trajanje')),
            cijena: parseFloat(podaci.get('cijena')),
            verificiran: podaci.get('verificiran')=='on'? true:false
        };

        // console.log(smjer);

    }

    return (
        <Container>
            Dodavanje smjera
            <Form onSubmit={obradiSubmit}>

                <Form.Group controlId="naziv">
                    <Form.Label>Naziv</Form.Label>
                    <Form.Control type="text" name="naziv"/>
                </Form.Group>

                <Form.Group controlId="trajanje">
                    <Form.Label>Trajanje</Form.Label>
                    <Form.Control type="text" name="trajanje"/>
                </Form.Group>
            
                <Form.Group controlId="cijena">
                    <Form.Label>Cijena</Form.Label>
                    <Form.Control type="text" name="cijena"/>
                </Form.Group>

                <Form.Group controlId="verificiran">
                    <Form.Check label="verificiran" name="verificiran"/>
                </Form.Group>

             <Row>
                <Col >
                    <Link className="btn btn-danger siroko" to={RoutesNames.SMJER_PREGLED}>
                        Odustani
                    </Link>
                 </Col>
                    <Col >
                       <Button className="siroko" variant="primary" type="submit">
                             Dodaj
                        </Button>
                     </Col>
                 </Row>
            </Form>
        </Container>
    );
}