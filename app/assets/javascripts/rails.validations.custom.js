// public/javascripts/rails.validations.custom.js

// The validator variable is a JSON Object
// The selector variable is a jQuery Object
window.ClientSideValidations.validators.local['email'] = function(element, options) {
  // Your validator code goes in here
  console.log("entrei na validação");
  $.ajax({
    url: 'email_validator/' + $('#user_email').val(),
    type: 'GET',
    dataType: 'json',
    error: function(jqXHR, textStatus, errorThrown) {},
    success: function(data, textStatus, jqXHR) {
      if (data.valid === true) {
        console.log("email válido");
        $('#email_input_div').removeClass('invalid-feedback d-block');

      } else if (data.valid === false) {
        //$('#email_input_div').removeClass('invalid-feedback d-block');
        return options.message;

        console.log("email inválido");
        //return $('#email_input_div').append('<div class="invalid-feedback d-block">Email já cadastrado.</div>');
      }
    }
  });
  }
