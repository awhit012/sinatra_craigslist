$(function(){
  bindLinks()
})

bindLinks = function(){
  $('#new-post-link').on('click', function(event){
    event.preventDefault();
    renderPage('/posts/new_post');
  });

  $('a.category').on('click', function(event){
    var this_url = $(this).attr("href");
    event.preventDefault()
    renderPage(this_url)
    });

  $('#edit-button').on('click', function(event){
    event.preventDefault()
    renderPage('posts/edit_post')
  });

  $('a.post').on('click', function(event){
    var this_url = $(this).attr("href");
    event.preventDefault();
    renderPage(this_url);
  });



  $('#new-post-submit').submit(function(event) {
    var title       = $('#new-post-form')[0][0].value;
    var description = $('#new-post-form')[0][1].value;
    var email       = $('#new-post-form')[0][2].value;
    var price       = $('#new-post-form')[0][3].value;
    var category    = $('#new-post-form')[0][4].value;

    event.preventDefault();
    alert(title)
    postData('posts/new_post')
    // postData('/posts/new_post' + '/' + title + '/' + description + '/' + email + '/' + price + '/' + category)
  })

}

renderPage = function(this_url){
  $.ajax({
    url: this_url
  }).done(function(data){
    $('#app-container').html(data)
    bindLinks();
  });
};

postData = function(this_url){
  $.ajax({
      url: this_url,
      type: 'POST'
    }).done(function(data){
      $('#app-container').html(data)
      bindLinks();
  });
};