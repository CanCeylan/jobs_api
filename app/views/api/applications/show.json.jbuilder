json.application do
	json.id				"You've jsut applied #{@application.id} by asking the salary of #{@application.salary} for #{Job.find(@application.job_id).name}" 
	json.salary			@application.salary
	json.job   			@application.job_id
end