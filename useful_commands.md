### gcloud 
#### region list
`gcloud compute regions list`

#### flavor list
`gcloud compute machine-types list` 

g1-small          us-central1-a
#### create minimal vm in US
`CLOUDSDK_COMPUTE_REGION=us-central1 CLOUDSDK_COMPUTE_ZONE=us-central1-a gcloud compute instances create --machine-type g1-small assetlinks`

### ChenMed address

Craig Bookwalter
1395 NW 167 ST
Miami, FL 33169

### eRFC example

CHG0042317

### pip avoid certificate issues
pip3 install --trusted-host pypi.org --trusted-host files.pythonhosted.org <package>

