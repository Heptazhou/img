n = 0
try
	for ext in [".jpg", ".png"]
		cd(ext[2:end])
		for f in readdir()
			splitext(f)[2] == ext || continue
			mv(f, splitext(f)[1])
			global n += 1
		end
		cd("..")
	end
	@info "完成 > $n"
catch e
	@info "错误 > $n"
	@info e
end
readline()
