# ComponentFaceDetection Component

![ColorSegmentation-ComponentImage](model/ComponentFaceDetectionComponentDefinition.jpg)


| Metaelement | Documentation |
|-------------|---------------|
| License |  |
| Hardware Requirements |  |
| Purpose | Detect human face and retrieve according information |

## Requirements
opencv 2.0+
openblas

## Service Ports
### PushedService
pushedIn: DomainVision::CommRGBDImage 
pushedOut: DomainVision::CommVideoImage

### QueryService
**PersonQueryServiceAnsw**
request: CommPerception::Empty
answer: CommPerception::CommPersonDetection

## Usage
1. download model files from https://drive.google.com/open?id=1KZC3shDkbQL3qcn7QDVjpDHP9V2gwqlt
2. replace path in /smartsoft/src/mtcnn.cpp

## Reference
https://github.com/AlphaQi/MTCNN-light
