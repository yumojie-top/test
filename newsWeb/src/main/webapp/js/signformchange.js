$(function ()
{
    $('.change a').click(function ()
    {
        $('.signform').animate({height: 'toggle', opacity: 'toggle'}, 'slow');
    });
});

function start1() {
    document.getElementById('signform').style.display="block";
}

function start2() {
    document.getElementById('registerform').style.display="block";
}

function signclose1() {
    document.getElementById('signform').style.display="none";
    document.getElementById('registerform').style.display="none";
}
function loading1() {
    alert("1");
    document.getElementById('registerloading').style.display="block";
}