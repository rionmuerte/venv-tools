function mkvenv {
    if [ -z "$1" ] ; then
        echo "Empty arument, must have name."
        exit 1
    fi
    venvs_directory='Documents/venvs'
    original_directory=$(pwd)
    cd
    cd "$venvs_directory"
    python -m venv "$1"
    cd "$original_directory"
}

function activate-venv {
    if [ -z "$1" ] ; then
        echo "Empty arument, must have name."
        exit 1
    fi
    original_directory=$(pwd)
    env="Documents/venvs/$1/Scripts/activate"
    cd
    source "$env"
    cd "$original_directory"
}