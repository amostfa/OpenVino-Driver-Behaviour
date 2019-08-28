# Create variables for all models used by the tutorials to make 
#  it easier to reference them with short names

# check for variable set by setupvars.sh in the SDK, need it to find models
: ${InferenceEngine_DIR:?"Must source the setupvars.sh in the SDK to set InferenceEngine_DIR"}

# 4 = 2018 R4
# 5 = 2018 R5
# 6 = 2019 R1
# 2 = 2019 R2

if (echo $INTEL_CVSDK_DIR | grep -q "\.5\."); 
then export INTEL_CVSDK_VER=5
else 
        if (echo $INTEL_CVSDK_DIR | grep -q "openvino_2019.2"); 
        then export INTEL_CVSDK_VER=20
        else 
                if (echo $INTEL_CVSDK_DIR | grep -q "openvino"); 
                then export INTEL_CVSDK_VER=6
                else
                        export INTEL_CVSDK_VER=4
                fi
        fi
fi

if [ $INTEL_CVSDK_VER -eq "20" ]; then
modelDir=$InferenceEngine_DIR/../../tools/model_downloader
# Vehicle and License Plates Detection Model
modName=vehicle-license-plate-detection-barrier-0106
export mVLP16=$modelDir/Security/object_detection/barrier/0106/dldt/FP16/$modName.xml
export mVLP32=$modelDir/Security/object_detection/barrier/0106/dldt/FP32/$modName.xml

# Vehicle-only Detection Model used with the batch size exercise
modName=vehicle-detection-adas-0002
export mVDR16=$modelDir/Transportation/object_detection/vehicle/mobilenet-reduced-ssd/dldt/FP16/$modName.xml
export mVDR32=$modelDir/Transportation/object_detection/vehicle/mobilenet-reduced-ssd/dldt/FP32/$modName.xml

# Vehicle Attributes Detection Model
modName=vehicle-attributes-recognition-barrier-0039
export mVA16=$modelDir/Security/object_attributes/vehicle/resnet10_update_1/dldt/FP16/$modName.xml
export mVA32=$modelDir/Security/object_attributes/vehicle/resnet10_update_1/dldt/FP32/$modName.xml

modName=person-vehicle-bike-detection-crossroad-0078
export vehicle216=$modelDir/Security/object_detection/crossroad/0078/dldt/FP16/$modName.xml
export vehicle232=$modelDir/Security/object_detection/crossroad/0078/dldt/FP32/$modName.xml

modName=pedestrian-and-vehicle-detector-adas-0001
export pv16=$modelDir/Transportation/object_detection/pedestrian-and-vehicle/mobilenet-reduced-ssd/dldt/FP16/$modName.xml
export pv32=$modelDir/Transportation/object_detection/pedestrian-and-vehicle/mobilenet-reduced-ssd/dldt/FP32/$modName.xml

modName=person-detection-retail-0013
export person116=$modelDir/Retail/object_detection/pedestrian/hypernet-rfcn/0026/dldt/FP16/$modName.xml
export person132=$modelDir/Retail/object_detection/pedestrian/hypernet-rfcn/0026/dldt/FP32/$modName.xml

modName=pedestrian-detection-adas-0002
export person216=$modelDir/Transportation/object_detection/pedestrian/mobilenet-reduced-ssd/dldt/FP16/$modName.xml
export person232=$modelDir/Transportation/object_detection/pedestrian/mobilenet-reduced-ssd/dldt/FP32/$modName.xml

# Face Detection
modName=face-detection-adas-0001
export face116=$modelDir/Transportation/object_detection/face/pruned_mobilenet_reduced_ssd_shared_weights/dldt/FP16/$modName.xml
export face132=$modelDir/Transportation/object_detection/face/pruned_mobilenet_reduced_ssd_shared_weights/dldt/FP32/$modName.xml

modName=face-detection-retail-0004
export face216=$modelDir/Retail/object_detection/face/sqnet1.0modif-ssd/0004/dldt/FP16/$modName.xml
export face232=$modelDir/Retail/object_detection/face/sqnet1.0modif-ssd/0004/dldt/FP32/$modName.xml

modName=facial-landmarks-35-adas-0002
export lm116=$modelDir/Transportation/object_attributes/facial_landmarks/custom-35-facial-landmarks/dldt/FP16/$modName.xml
export lm132=$modelDir/Transportation/object_attributes/facial_landmarks/custom-35-facial-landmarks/dldt/FP32/$modName.xml

modName=landmarks-regression-retail-0009
export lm216=$modelDir/Retail/object_attributes/landmarks_regression/0009/dldt/FP16/$modName.xml
export lm232=$modelDir/Retail/object_attributes/landmarks_regression/0009/dldt/FP32/$modName.xml

modName=person-detection-action-recognition-classroom-0003
export pda16=$modelDir/$modName/FP16/$modName.xml
export pda32=$modelDir/$modName/FP32/$modName.xml

modName=person-reidentification-retail-0079
export pr116=$modelDir/$modName/FP16/$modName.xml
export pr132=$modelDir/$modName/FP32/$modName.xml

modName=emotions-recognition-retail-0003
export em16=$modelDir/$modName/FP16/$modName.xml
export em32=$modelDir/$modName/FP32/$modName.xml

modName=head-pose-estimation-adas-0001
export hp16=$modelDir/Transportation/object_attributes/headpose/vanilla_cnn/dldt/FP16/$modName.xml
export hp32=$modelDir/Transportation/object_attributes/headpose/vanilla_cnn/dldt/FP32/$modName.xml

modName=face-reidentification-retail-0095
export reid16=$modelDir/Retail/object_reidentification/face/mobilenet_based/dldt/FP16/$modName.xml
export reid32=$modelDir/Retail/object_reidentification/face/mobilenet_based/dldt/FP32/$modName.xml

else if [ $INTEL_CVSDK_VER -eq "6" ]; then
modelDir=$InferenceEngine_DIR/../../tools/model_downloader
# Vehicle and License Plates Detection Model
modName=vehicle-license-plate-detection-barrier-0106
export mVLP16=$modelDir/Security/object_detection/barrier/0106/dldt/$modName\-fp16.xml
export mVLP32=$modelDir/Security/object_detection/barrier/0106/dldt/$modName.xml

# Vehicle-only Detection Model used with the batch size exercise
modName=vehicle-detection-adas-0002
export mVDR16=$modelDir/Transportation/object_detection/vehicle/mobilenet-reduced-ssd/dldt/$modName\-fp16.xml
export mVDR32=$modelDir/Transportation/object_detection/vehicle/mobilenet-reduced-ssd/dldt/$modName.xml

# Vehicle Attributes Detection Model
modName=vehicle-attributes-recognition-barrier-0039
export mVA16=$modelDir/Security/object_attributes/vehicle/resnet10_update_1/dldt/$modName\-fp16.xml
export mVA32=$modelDir/Security/object_attributes/vehicle/resnet10_update_1/dldt/$modName.xml

modName=person-vehicle-bike-detection-crossroad-0078
export vehicle216=$modelDir/Security/object_detection/crossroad/0078/dldt/$modName\-fp16.xml
export vehicle232=$modelDir/Security/object_detection/crossroad/0078/dldt/$modName.xml

modName=pedestrian-and-vehicle-detector-adas-0001
export pv16=$modelDir/Transportation/object_detection/pedestrian-and-vehicle/mobilenet-reduced-ssd/dldt/$modName\-fp16.xml
export pv32=$modelDir/Transportation/object_detection/pedestrian-and-vehicle/mobilenet-reduced-ssd/dldt/$modName.xml

modName=person-detection-retail-0013
export person116=$modelDir/Retail/object_detection/pedestrian/hypernet-rfcn/0026/dldt/$modName\-fp16.xml
export person132=$modelDir/Retail/object_detection/pedestrian/hypernet-rfcn/0026/dldt/$modName.xml

modName=pedestrian-detection-adas-0002
export person216=$modelDir/Transportation/object_detection/pedestrian/mobilenet-reduced-ssd/dldt/$modName\-fp16.xml
export person232=$modelDir/Transportation/object_detection/pedestrian/mobilenet-reduced-ssd/dldt/$modName.xml

# Face Detection
modName=face-detection-adas-0001
export face116=$modelDir/Transportation/object_detection/face/pruned_mobilenet_reduced_ssd_shared_weights/dldt/$modName\-fp16.xml
export face132=$modelDir/Transportation/object_detection/face/pruned_mobilenet_reduced_ssd_shared_weights/dldt/$modName.xml

modName=face-detection-retail-0004
export face216=$modelDir/Retail/object_detection/face/sqnet1.0modif-ssd/0004/dldt/$modName\-fp16.xml
export face232=$modelDir/Retail/object_detection/face/sqnet1.0modif-ssd/0004/dldt/$modName.xml

modName=facial-landmarks-35-adas-0002
export lm116=$modelDir/Transportation/object_attributes/facial_landmarks/custom-35-facial-landmarks/dldt/$modName\-fp16.xml
export lm132=$modelDir/Transportation/object_attributes/facial_landmarks/custom-35-facial-landmarks/dldt/$modName.xml

modName=landmarks-regression-retail-0009
export lm216=$modelDir/Retail/object_attributes/landmarks_regression/0009/dldt/$modName\-fp16.xml
export lm232=$modelDir/Retail/object_attributes/landmarks_regression/0009/dldt/$modName.xml

modName=person-detection-action-recognition-classroom-0003
export pda16=$modelDir/$modName/FP16/$modName\-fp16.xml
export pda32=$modelDir/$modName/FP32/$modName.xml

modName=person-reidentification-retail-0079
export pr116=$modelDir/$modName/FP16/$modName\-fp16.xml
export pr132=$modelDir/$modName/FP32/$modName.xml

modName=emotions-recognition-retail-0003
export em16=$modelDir/$modName/FP16/$modName\-fp16.xml
export em32=$modelDir/$modName/FP32/$modName.xml

modName=head-pose-estimation-adas-0001
export hp16=$modelDir/Transportation/object_attributes/headpose/vanilla_cnn/dldt/$modName\-fp16.xml
export hp32=$modelDir/Transportation/object_attributes/headpose/vanilla_cnn/dldt/$modName.xml

modName=face-reidentification-retail-0095
export reid16=$modelDir/Retail/object_reidentification/face/mobilenet_based/dldt/$modName\-fp16.xml
export reid32=$modelDir/Retail/object_reidentification/face/mobilenet_based/dldt/$modName.xml

else
modelDir=$InferenceEngine_DIR/../../intel_models
# Vehicle and License Plates Detection Model
modName=vehicle-license-plate-detection-barrier-0106
export mVLP16=$modelDir/$modName/FP16/$modName.xml
export mVLP32=$modelDir/$modName/FP32/$modName.xml

# Vehicle-only Detection Model used with the batch size exercise
modName=vehicle-detection-adas-0002
export mVDR16=$modelDir/$modName/FP16/$modName.xml
export mVDR32=$modelDir/$modName/FP32/$modName.xml

# Vehicle Attributes Detection Model
modName=vehicle-attributes-recognition-barrier-0039
export mVA16=$modelDir/$modName/FP16/$modName.xml
export mVA32=$modelDir/$modName/FP32/$modName.xml

modName=person-vehicle-bike-detection-crossroad-0078
export vehicle216=$modelDir/$modName/FP16/$modName.xml
export vehicle232=$modelDir/$modName/FP32/$modName.xml

modName=pedestrian-and-vehicle-detector-adas-0001
export pv16=$modelDir/$modName/FP16/$modName.xml
export pv32=$modelDir/$modName/FP32/$modName.xml

modName=person-detection-retail-0013
export person116=$modelDir/$modName/FP16/$modName.xml
export person132=$modelDir/$modName/FP32/$modName.xml

modName=pedestrian-detection-adas-0002
export person216=$modelDir/$modName/FP16/$modName.xml
export person232=$modelDir/$modName/FP32/$modName.xml

# Face detection
modName=face-detection-adas-0001
export face116=$modelDir/$modName/FP16/$modName.xml
export face132=$modelDir/$modName/FP32/$modName.xml

modName=face-detection-retail-0004
export face216=$modelDir/$modName/FP16/$modName.xml
export face232=$modelDir/$modName/FP32/$modName.xml

modName=facial-landmarks-35-adas-0001
export lm116=$modelDir/$modName/FP16/$modName.xml
export lm132=$modelDir/$modName/FP32/$modName.xml

modName=landmarks-regression-retail-0009
export lm216=$modelDir/$modName/FP16/$modName.xml
export lm232=$modelDir/$modName/FP32/$modName.xml

modName=person-detection-action-recognition-classroom-0003
export pda16=$modelDir/$modName/FP16/$modName.xml
export pda32=$modelDir/$modName/FP32/$modName.xml

modName=person-reidentification-retail-0079
export pr116=$modelDir/$modName/FP16/$modName.xml
export pr132=$modelDir/$modName/FP32/$modName.xml

modName=emotions-recognition-retail-0003
export em16=$modelDir/$modName/FP16/$modName.xml
export em32=$modelDir/$modName/FP32/$modName.xml

modName=head-pose-estimation-adas-0001
export hp16=$modelDir/$modName/FP16/$modName.xml
export hp32=$modelDir/$modName/FP32/$modName.xml

modName=face-reidentification-retail-0095
export reid16=$modelDir/$modName/FP16/$modName.xml
export reid32=$modelDir/$modName/FP32/$modName.xml
fi
fi

modName=frozen_yolo_v3
export yolo16=../data/$modName.xml