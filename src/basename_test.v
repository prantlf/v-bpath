module bpath

fn test_empty() {
	out := basename('')
	assert out == ''
}

fn test_name() {
	out := basename('a')
	assert out == 'a'
}

fn test_slash() {
	out := basename('/')
	assert out == '/'
}

fn test_two_slashes() {
	out := basename('//')
	assert out == '/'
}

fn test_backslash() {
	out := basename('\\')
	assert out == '\\'
}

fn test_two_backslashes() {
	out := basename('\\\\')
	assert out == '\\'
}

fn test_name_ends_with_slash() {
	out := basename('a/')
	assert out == 'a'
}

fn test_name_ends_with_two_slashes() {
	out := basename('a//')
	assert out == 'a'
}

fn test_name_ends_with_backslash() {
	out := basename('a\\')
	assert out == 'a'
}

fn test_name_ends_with_two_backslashes() {
	out := basename('a\\\\')
	assert out == 'a'
}

fn test_name_starts_with_slash() {
	out := basename('/a')
	assert out == 'a'
}

fn test_name_starts_with_backslash() {
	out := basename('\\a')
	assert out == 'a'
}

fn test_names_with_slash() {
	out := basename('a/b')
	assert out == 'b'
}

fn test_names_with_backslash() {
	out := basename('a\\b')
	assert out == 'b'
}
