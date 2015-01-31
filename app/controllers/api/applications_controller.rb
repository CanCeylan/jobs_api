module Api
	class ApplicationsController < Api::BaseController


		private

		def application_params
			params.require(:application).permit(:job_id, 
												:applicant_id, 
												:salary,
												:linkedin_url,
												:github_url,
												:reason,
												:other_url,
												:explanation)
		end

		def query_params
			params.permit(:applicant_id, :job_id, :salary)
		end
	
	end
end
 