module ResumesHelper
	def add_and_save_resume(obj)
		obj.resume = current_user.resume
		obj.save
	end
end
