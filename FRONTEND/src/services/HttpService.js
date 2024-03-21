import axios from "axios";


export const HttpService = axios.create({

baseURL: 'http://rebolj-001-site1.ctempurl.com/api/v1',
headers:{
    'Content-Type':'application/json'
}

});