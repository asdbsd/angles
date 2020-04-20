// Immediately invoked function
(function () {
  //window.AddEventListener('load', attachEvents)
  var datePicker = document.getElementById('group_tour_reservation_date');
  console.log('datepicker:', datePicker);
  datePicker.addEventListener('change', onDateChange);
  datePicker.addEventListener('click', onClickDP);

  var selectedInput = document.querySelectorAll('input.form-control[type=text]');
  console.log('input.form-control[type=text]', selectedInput[2]);
})()


function onDateChange(e){
  //e.preventDefault();
  var link = document.createElement("a");

  link.href = "new?selected_date=" + e.target.value;
  console.log(e);
//document.getElementById(link).click();
link.click();

}

function onClickDP(e){
  console.log('event object of date picker', e);
}
