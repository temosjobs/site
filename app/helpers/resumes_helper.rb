module ResumesHelper
	def add_and_save_resume(obj)
		obj.resume = rview_context.current_user.resumeesume
		obj.save
		redirect_to resume_educations_path(view_context.current_user.resume.id)
	end
end
