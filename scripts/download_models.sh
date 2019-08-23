# Create variables for all models used by the tutorials to make 
#  it easier to reference them with short names

# check for variable set by setupvars.sh in the SDK, need it to find models
: ${InferenceEngine_DIR:?"Must source the setupvars.sh in the SDK to set InferenceEngine_DIR"}

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

PRECISION="fp32 fp16"
models_path=$parent_path/../models/
mkdir -p ${models_path}/$prec

path_to_downloader=`find ${InferenceEngine_DIR}/../../../ -name downloader.py`

echo ${InferenceEngine_DIR}
echo ${parent_path}
echo ${path_to_downloader}

mkdir -p ${models_path}/intel
python3 ${path_to_downloader} --list ${parent_path}/list.lst -o ${models_path}/intel

find $models_path/intel -name "*.bin" -exec mv {} $models_path \;
find $models_path/intel -name "*.xml" -exec mv {} $models_path \;

rm -r ${models_path}/intel
