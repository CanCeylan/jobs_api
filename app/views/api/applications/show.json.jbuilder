json.message		"Choose your dream Job at Deriva and make sure you remember it's id..."



json.application do
	json.id				@application.id
	json.salary			@application.salary
	json.job   			@application.job_id
end