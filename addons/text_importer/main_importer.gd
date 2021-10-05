## Written by Andrew Poženel AKA SloDevTeam 2020-2021 ##

tool
extends EditorImportPlugin


func get_importer_name() -> String:
	return "custom.text.resources"
	pass

func get_visible_name() -> String:
	return "Custom Text Resources"
	pass

func get_recognized_extensions() -> Array:
	return ["txt", "xtt", "ttx", "sdt", "text"]
	pass

func get_save_extension() -> String:
	return "sdt"
	pass

#func get_resource_type() -> String:
#	return "TextFile"
#	pass

func get_option_visibility(option: String, options: Dictionary) -> bool:
	return true
	pass







func import(source_file: String, save_path: String, options: Dictionary, platform_variants: Array, gen_files: Array) -> int:

	var file = File.new()

	var err = file.open(source_file, File.READ)

	if err != OK:
		return err

	var content = file.get_as_text()

	file.close()



	return content

