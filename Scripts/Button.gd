extends Control

func _on_Button_button_down():
	Base._button(get_node("."))

func _on_Tween_tween_completed(object, key):
	Base._tween2()

func _on_Button_button_up():
	Base._tweenS()


func _on_TextEdit_text_changed(new_text):
	Base.MC()
