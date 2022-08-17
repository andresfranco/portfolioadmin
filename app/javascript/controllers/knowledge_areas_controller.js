import { Controller } from "@hotwired/stimulus"
import { Swal } from "sweetalert2"
// Connects to data-controller="knowledge-areas"
export default class extends Controller {
  delete(event){
    console.log("in delete event")
    let confirmed = confirm("Are You sure?")
    if (!confirmed) {
      event.preventDefault()
    }

  }
  
  showAlert(){
    Swal.fire('Any fool can use a computer')
    console.log("showalert")
  }


}
