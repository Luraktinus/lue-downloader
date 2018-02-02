extends Panel

func _on_Button_pressed():
	var link
	var zero
	zero = ""
	link = get_node("LineEdit").text
	if link == zero:
		OS.alert("You have to enter a link!")
	else:
		OS.alert("Downloading " + link, "Lue-D")
		OS.execute("gnome-terminal", ["--", "youtube-dl", link],true)
func _on_Help_pressed():
	OS.alert(
	#Readme, dont forget the "+"\n"+"
	"Instructions"+"\n"+
	"--------------"+"\n"+
	"you need youtube-dl to be installed for now... "+"\n"+
	"...might change in future versions "+"\n"+
	"also you need the cookies.txt for CH in your home dir "+"\n"+
	""
	#Title
	,"Help")
	
