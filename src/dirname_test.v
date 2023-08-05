module path_both

fn test_empty() {
	out := dirname('')
	assert out == '.'
}

fn test_name() {
	out := dirname('a')
	assert out == '.'
}

fn test_slash() {
	out := dirname('/')
	assert out == '/'
}

fn test_two_slashes() {
	out := dirname('//')
	assert out == '/'
}

fn test_backslash() {
	out := dirname('\\')
	assert out == '\\'
}

fn test_two_backslashes() {
	out := dirname('\\\\')
	assert out == '\\'
}

fn test_name_ends_with_slash() {
	out := dirname('a/')
	assert out == '.'
}

fn test_name_ends_with_two_slashes() {
	out := dirname('a//')
	assert out == '.'
}

fn test_name_ends_with_backslash() {
	out := dirname('a\\')
	assert out == '.'
}

fn test_name_ends_with_two_backslashes() {
	out := dirname('a\\\\')
	assert out == '.'
}

fn test_name_starts_with_slash() {
	out := dirname('/a')
	assert out == '/'
}

fn test_name_starts_with_backslash() {
	out := dirname('\\a')
	assert out == '\\'
}

fn test_name_starts_with_two_slashes() {
	out := dirname('//a')
	assert out == '/'
}

fn test_name_starts_with_two_backslashes() {
	out := dirname('\\\\a')
	assert out == '\\'
}

fn test_names_with_slash() {
	out := dirname('a/b')
	assert out == 'a'
}

fn test_names_with_backslash() {
	out := dirname('a\\b')
	assert out == 'a'
}
