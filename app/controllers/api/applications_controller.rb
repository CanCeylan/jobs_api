module Api
	class ApplicationsController < Api::BaseController


		def new
			@application = current_applicant.applications.build
		end

		def create
			@application = current_applicant.applications.build(application_params)
			pp "merhaba bu benim creatimmmm"

			if @application.save
				render :show, status: :created
			else
				render json: get_resource.errors, status: :unprocessable_entity
			end
		end

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
 