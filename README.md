# ensurepackages

Install or remove a list of packages.

## Usage

    class { 'ensurepackages':
        present => ["emacs", "vim"],
        absent => ["nano"],
    }
