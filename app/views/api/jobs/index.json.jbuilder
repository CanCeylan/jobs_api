json.jobs @jobs do |j|
	json.id				j.id
	json.role			j.name
	json.type			j.role
	json.description 	j.description
end

json.message		"Choose your dream Job at Deriva and make sure you remember it's id..."