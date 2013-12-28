proc(_chat_format, @user, @message, @source, 
	@format = '[' .@source. '] ' . '<' .@user. '> ' . @message
	return(@format)
)