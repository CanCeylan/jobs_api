module Api
	class JobsController < Api::BaseController

		private

		def job_params
			params.require(:job).permit(:name, :description, :type)
		end

		def query_params
			params.permit(:name, :type)
		end

	end
end
