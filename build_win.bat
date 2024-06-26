python -m pip install pyinstaller -r requirements.txt

python setup.py compile_catalog -D py_extract -d locales/

python setup.py build_ext  --inplace

pyinstaller --onefile --add-data "locales;locales" -n "PyExtract" "run.py"

copy ".\config\example_config.toml"  ".\dist\py_extract_config.toml"
