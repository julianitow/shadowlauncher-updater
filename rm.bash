files=$(ls $1)
length=${#files}

if [[ $length -eq 0 ]]; then
    exit 0;
fi

rm -rf $1/*
exit 0
