// Render the PayPal button
paypal.Button.render({
// Set your environment
env: 'sandbox', // sandbox | production

// Specify the style of the button
style: {
  layout: 'vertical',  // horizontal | vertical
  size:   'responsive',    // medium | large | responsive
  shape:  'rect',      // pill | rect
  color:  'gold'       // gold | blue | silver | white | black
},

// Specify allowed and disallowed funding sources
//
// Options:
// - paypal.FUNDING.CARD
// - paypal.FUNDING.CREDIT
// - paypal.FUNDING.ELV
funding: {
  allowed: [
    paypal.FUNDING.CARD,
    paypal.FUNDING.CREDIT
  ],
  disallowed: []
},

// Enable Pay Now checkout flow (optional)
commit: true,

// PayPal Client IDs - replace with your own
// Create a PayPal app: https://developer.paypal.com/developer/applications/create
client: {
  sandbox: 'ARduz3kirhi_-rw8i_60MNgZhwEkU9l43q4Bo252B0rB3tV1WSQ89EKkvHUue23bmGv-GDwg3EtX8hV4',
  production: 'ARduz3kirhi_-rw8i_60MNgZhwEkU9l43q4Bo252B0rB3tV1WSQ89EKkvHUue23bmGv-GDwg3EtX8hV4'
},

payment: function (data, actions) {
  return actions.payment.create({
    payment: {
      transactions: [
        {
          amount: {
            total: '5',
            currency: 'EUR'
          }
        }
      ]
    }
  });
},

onAuthorize: function (data, actions) {
  return actions.payment.execute()
    .then(function () {
    	$.ajax({
    		url: 'aggiornaSaldo',
    		type : 'POST',
    		data:{
    			saldo:500	
    		},
    		success : function(result){
    			swal({
    				type : 'success',
    				title : 'Acquisto Effettuato Con Successo!',
    				confirmButtonText : 'Continua'

    			})
    		}
    	});
    });
}
}, '#paypal-button5');

// Render the PayPal button
paypal.Button.render({
// Set your environment
env: 'sandbox', // sandbox | production

// Specify the style of the button
style: {
  layout: 'vertical',  // horizontal | vertical
  size:   'responsive',    // medium | large | responsive
  shape:  'rect',      // pill | rect
  color:  'gold'       // gold | blue | silver | white | black
},

// Specify allowed and disallowed funding sources
//
// Options:
// - paypal.FUNDING.CARD
// - paypal.FUNDING.CREDIT
// - paypal.FUNDING.ELV
funding: {
  allowed: [
    paypal.FUNDING.CARD,
    paypal.FUNDING.CREDIT
  ],
  disallowed: []
},

// Enable Pay Now checkout flow (optional)
commit: true,

// PayPal Client IDs - replace with your own
// Create a PayPal app: https://developer.paypal.com/developer/applications/create
client: {
  sandbox: 'ARduz3kirhi_-rw8i_60MNgZhwEkU9l43q4Bo252B0rB3tV1WSQ89EKkvHUue23bmGv-GDwg3EtX8hV4',
  production: 'ARduz3kirhi_-rw8i_60MNgZhwEkU9l43q4Bo252B0rB3tV1WSQ89EKkvHUue23bmGv-GDwg3EtX8hV4'
},

payment: function (data, actions) {
  return actions.payment.create({
    payment: {
      transactions: [
        {
          amount: {
            total: '10',
            currency: 'EUR'
          }
        }
      ]
    }
  });
},

onAuthorize: function (data, actions) {
  return actions.payment.execute()
    .then(function () {
    	$.ajax({
    		url: 'aggiornaSaldo',
    		type : 'POST',
    		data:{
    			saldo:1000	
    		},
    		success : function(result){
    			swal({
    				type : 'success',
    				title : 'Acquisto Effettuato Con Successo!',
    				confirmButtonText : 'Continua'

    			})
    		}
    	});
    });
}
}, '#paypal-button10');

// Render the PayPal button
paypal.Button.render({
// Set your environment
env: 'sandbox', // sandbox | production

// Specify the style of the button
style: {
  layout: 'vertical',  // horizontal | vertical
  size:   'responsive',    // medium | large | responsive
  shape:  'rect',      // pill | rect
  color:  'gold'       // gold | blue | silver | white | black
},

// Specify allowed and disallowed funding sources
//
// Options:
// - paypal.FUNDING.CARD
// - paypal.FUNDING.CREDIT
// - paypal.FUNDING.ELV
funding: {
  allowed: [
    paypal.FUNDING.CARD,
    paypal.FUNDING.CREDIT
  ],
  disallowed: []
},

// Enable Pay Now checkout flow (optional)
commit: true,

// PayPal Client IDs - replace with your own
// Create a PayPal app: https://developer.paypal.com/developer/applications/create
client: {
  sandbox: 'ARduz3kirhi_-rw8i_60MNgZhwEkU9l43q4Bo252B0rB3tV1WSQ89EKkvHUue23bmGv-GDwg3EtX8hV4',
  production: 'ARduz3kirhi_-rw8i_60MNgZhwEkU9l43q4Bo252B0rB3tV1WSQ89EKkvHUue23bmGv-GDwg3EtX8hV4'
},

payment: function (data, actions) {
  return actions.payment.create({
    payment: {
      transactions: [
        {
          amount: {
            total: '20',
            currency: 'EUR'
          }
        }
      ]
    }
  });
},

onAuthorize: function (data, actions) {
  return actions.payment.execute()
    .then(function () {
    	$.ajax({
    		url: 'aggiornaSaldo',
    		type : 'POST',
    		data:{
    			saldo:2000	
    		},
    		success : function(result){
    			swal({
    				type : 'success',
    				title : 'Acquisto Effettuato Con Successo!',
    				confirmButtonText : 'Continua'

    			})
    		}
    	});
    });
}
}, '#paypal-button20');

// Render the PayPal button
paypal.Button.render({
// Set your environment
env: 'sandbox', // sandbox | production

// Specify the style of the button
style: {
  layout: 'vertical',  // horizontal | vertical
  size:   'responsive',    // medium | large | responsive
  shape:  'rect',      // pill | rect
  color:  'gold'       // gold | blue | silver | white | black
},

// Specify allowed and disallowed funding sources
//
// Options:
// - paypal.FUNDING.CARD
// - paypal.FUNDING.CREDIT
// - paypal.FUNDING.ELV
funding: {
  allowed: [
    paypal.FUNDING.CARD,
    paypal.FUNDING.CREDIT
  ],
  disallowed: []
},

// Enable Pay Now checkout flow (optional)
commit: true,

// PayPal Client IDs - replace with your own
// Create a PayPal app: https://developer.paypal.com/developer/applications/create
client: {
  sandbox: 'ARduz3kirhi_-rw8i_60MNgZhwEkU9l43q4Bo252B0rB3tV1WSQ89EKkvHUue23bmGv-GDwg3EtX8hV4',
  production: 'ARduz3kirhi_-rw8i_60MNgZhwEkU9l43q4Bo252B0rB3tV1WSQ89EKkvHUue23bmGv-GDwg3EtX8hV4'
},

payment: function (data, actions) {
  return actions.payment.create({
    payment: {
      transactions: [
        {
          amount: {
            total: '50',
            currency: 'EUR'
          }
        }
      ]
    }
  });
},

onAuthorize: function (data, actions) {
  return actions.payment.execute()
    .then(function () {
    	$.ajax({
    		url: 'aggiornaSaldo',
    		type : 'POST',
    		data:{
    			saldo:5000	
    		},
    		success : function(result){
    			swal({
    				type : 'success',
    				title : 'Acquisto Effettuato Con Successo!',
    				confirmButtonText : 'Continua'

    			})
    		}
    	});
    });
}
}, '#paypal-button50');