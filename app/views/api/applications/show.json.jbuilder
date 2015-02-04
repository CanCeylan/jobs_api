json.application do
	json.congrats		"Hey there! You've just applied for #{Job.find(@application.job_id).name}!" 
	json.message		"If you're funny enough like doing 'Seviyosan git commit' kinds of jokes, you're more than welcome to our team!"
	json.questions		"If you have any questions, please don't hesitate to contact us via e-mail at contact@derivalabs.com."
end