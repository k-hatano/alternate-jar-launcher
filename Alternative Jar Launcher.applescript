on openFile(appItem)
	set posixPath to POSIX path of appItem
	do shell script "java -jar " & posixPath
end openFile

on run
	tell application "Finder"
		set fileItem to (choose file)
		set aliasPath to fileItem as text
		set posixFile to aliasPath as POSIX file
	end tell
	openFile(fileItem)
end run

on open appItem
	openFile(appItem)
end open