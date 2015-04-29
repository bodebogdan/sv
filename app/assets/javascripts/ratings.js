$(document).ready(function(){
		Rating();
});

var Rating = function(){

  $('.star').each(function(){
    var holder = $(this);    
    holder.raty({
      readOnly: true,
      score: holder.attr("data-car-score"),
      path: '/assets'
    });
  }); 

  $('.user_star').each(function(){
    var car = $(this);
    car.raty({
      score: 5,
      path: '/assets',
      click: function(score, evt) {
        $.ajax({
          url: '/ratings/?id=' + car.attr("data-car-id"),
          type: 'POST',
          data: { score: score }
        });
      }
    })
  });

};

$(document).on('page:load', Rating);