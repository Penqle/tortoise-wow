-- fix nexus crystal exploit
update item_template set disenchant_id = 0 where entry = 61009; -- Time-Shifting Wheel