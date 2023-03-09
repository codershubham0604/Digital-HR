//Code for slider
var imgnames=["slider_1.jpg","slider_2.gif","slider_3.jpg","slider_4.jpg"];
var i=0;
function moveSlider()
{
    if(i==imgnames.length)
    {
        i=0;
    }
    document.getElementById("slide").src="images/"+imgnames[i];
    i++;
    window.setTimeout("moveSlider()",2000);
}

