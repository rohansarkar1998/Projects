/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function validation () {
    var name = document.getElementById("name").value;
    if (name === '') {
        alert("Field is empty");
        return false;
    }
    
    var contact = document.getElementById("contact").value;
    if (contact.length !== 10) 
    {
        alert("Field is empty");
        return false;
    }
    else if (isNaN(contact))
    {alert ("not a number");
        return false;}
    
    var email= document.getElementById("email").value;
    var at= email.indexOf ("@");
    var dot= email.lastIndexOf(".")
 
 if (at<1 || dot <at+2|| dot+2 >= email.length)
 {
     alert ("Inavlid Email");
     return false;
 }
  if(!this.fr1.cb.checked)    
  {
      alert("Checkbox not selected");
      return false;
  }
 
}

