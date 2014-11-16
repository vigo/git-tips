function iprl5(){
    var d=document,
        z=d.createElement('scr'+'ipt'),
        b=d.body,
        l=d.location;
    try{
        if(!b)throw(0);
        d.title='(Kayıt ...) ' + d.title;
        z.setAttribute('src', l.protocol + '//www.instapaper.com/j/SPWtS6WFZsZK?u=' + encodeURIComponent(l.href) + '&t=' + (new Date().getTime()));
        b.appendChild(z);
    }
    catch(e){
        alert('Lütfen sayfa yüklenene kadar bekleyin...');
    }
}
$.domReady(function(){
    $("footer > .sharing")
        .prepend('<a title="' + instapaper_link_title + '" id="send_to_instapaper" href="#">' + instapaper_button_title + '</a>')
        .bind('click', function(e){
            iprl5();
            e.preventDefault();
        });
});
