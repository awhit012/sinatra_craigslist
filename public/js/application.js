$(function(){
  $('#new-post-link').on('click', function(event){
    event.preventDefault()
    $.ajax({
      url: "posts/new_post"
    }).done(function(data){
      $('#app-container').html(data)
    })
  });
  $('a.category').on('click', function(event){
    var this_url = $(this).attr("href");
    event.preventDefault()
    $.ajax({
      url: this_url
    }).done(function(data){
      $('#app-container').html(data);
      bindPost();
    })
  });
})

bindPost = function(){
  $('a.post').on('click', function(event){
    var this_url = $(this).attr("href");
    event.preventDefault()
    $.ajax({
      url: this_url
    }).done(function(data){
      $('#app-container').html(data)
    })
  });
}

