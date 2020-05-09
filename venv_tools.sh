mkvenv() {
    if [[ $# -ne 1 ]] ; then
        echo "Empty arument, must have name."
        return 1
    fi
    venvs_directory=~/Documents/venvs
    cd "$venvs_directory"
    python -m venv "$1"
    cd - > /dev/null
}

activate-venv() {
    if [[ $# -ne 1 ]] ; then
        echo "Incorrect number of arguments"
        return 1
    fi
    . ~/"Documents/venvs/$1/Scripts/activate"
}