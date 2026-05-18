@tool
extends ItemFrameGrid2D
class_name InventoryGrid2D

@export var inventory : Inventory;

func adding_child(child, id : int) -> void:
	if child is ItemFrame2D and inventory:
		child.item = inventory.get_item_at(id)
