cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

REM create a new conda environment
call conda create -n cert python=3.5 -y

REM activate environment
call conda activate cert

REM install two dependencies not included with base python
pip install reportlab==3.5.19 --force-reinstall
pip install PyPDF2==1.26.0 --force-reinstall

cmd /k
