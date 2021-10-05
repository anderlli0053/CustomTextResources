## Written by Andrew Poženel AKA SloDevTeam 2020-2021 ##

tool
extends EditorPlugin

var import_plugin


func _enter_tree() -> void:
	import_plugin = preload('res://addons/text_importer/main_importer.gd').new()
	add_import_plugin(import_plugin)
	pass


func _exit_tree() -> void:
	remove_import_plugin(import_plugin)
	import_plugin = null
	pass
