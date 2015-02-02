module Api
	class JobsController < ApplicationController

		def index
			@jobs = Job.all

			render :index
		end

		private

		def job_params
			params.require(:job).permit(:name, :description, :type)
		end

		def query_params
			params.permit(:name, :type)
		end

	end
end
