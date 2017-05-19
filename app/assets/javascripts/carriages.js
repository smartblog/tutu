$(document).ready(function() {
  $('#carriage_type').change(function() {
    var type;
    type = $(this).val();

    if (type == 'CoupeCarriage') {
      $('.top_carriages_fields').show();
      $('.bottom_carriages_fields').show();
      $('.economy_carriages_fields').hide();
      $('.seat_carriages_fields').hide();
    } else if (type == 'EconomyCarriage') {
      $('.top_carriages_fields').show();
      $('.bottom_carriages_fields').show();
      $('.economy_carriages_fields').show();
      $('.seat_carriages_fields').hide();
    } else if (type == 'LuxCarriage') {
      $('.top_carriages_fields').hide();
      $('.bottom_carriages_fields').show();
      $('.economy_carriages_fields').hide();
      $('.seat_carriages_fields').hide();
    } else if (type == 'SeatCarriage') {
      $('.top_carriages_fields').hide();
      $('.bottom_carriages_fields').hide();
      $('.economy_carriages_fields').hide();
      $('.seat_carriages_fields').show();
    }
  });
})
