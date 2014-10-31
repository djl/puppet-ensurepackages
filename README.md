# ensurepackage

Install or remove a list of packages.

## Usage

    class { 'ensurepackage':
        present => ["emacs", "vim"],
        absent => ["nano"],
    }
