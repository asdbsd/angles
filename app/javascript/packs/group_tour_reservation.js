


(function () {
  //window.AddEventListener('load', attachEvents)
  var datePicker = document.getElementById('group_tour_reservation_date');
  console.log('datepicker:', datePicker);
  datePicker.addEventListener('change', onDateChange);
})()


function onDateChange(){
  console.log('date was changed');
  var form = document.querySelector('form'); //select hidden input from children and set it's value to dont_update
  console.log('form: ', form);
  form.submit();
}
