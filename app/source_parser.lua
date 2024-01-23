-- Class for extracting import function calls from source files
return function(filename)
    -- Ensuring that there is an empty blank line at the end of the source code.
    -- If not, the bundled file will have endend and it will fail to run.
    local file_append = io.open(filename, "a")
    file_append:write("\n")
    file_append:close()

    local file = io.open(filename, "r")
    if file == nil then
        error("File not found: " .. filename)
    end
    local file_content = file:read("*a")
    file:close()
    local included_files = {}
    
    -- Search for import() calls with dobule quotes (!)
    for f in string.gmatch(file_content, 'import%(["\']([^\'"]-)["\']%)') do
        table.insert(included_files, f)
    end
    
    self = {}
    self.filename = filename
    self.content = file_content
    self.includes = included_files
    return self
end


























