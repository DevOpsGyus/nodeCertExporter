# Node Cert Exporter

`nodeCertExporter` exporter for x509 certificates.`nodeCertExporter` will parse SSL certificates directories recursively and expose their expiry as a Prometheus metric at `/metrics`. It can run on `Docker`.

* *This project is improvement of node-cert-expoter image by [amimof/node-cert-exporter](https://github.com/amimof/node-cert-exporter)*

#
## Features

* Retrieve SSL/TLS certificate information all directories.
* Export certificates to nodeCertExpoter.
#
## Requirements
* Docker
* Docker Compose

 
#
## Usage
To install the Node Cert Exporter, follow these steps:

* ### 
    ```
    docker run -p 9117:9117 thedev0psguys/nodecertexporter
    ```
#
## Using Docker Compose 
 
 Complete monitoring stack composed of `Prometheus`, `Alertmanager`, `Grafana` , `NodeExporter` and `nodeCertExporter`. 

*    Prometheus: A time-series database and monitoring system. Accessible at http://localhost:9090.

*    Alertmanager: A component of Prometheus that handles alerts and routes them to receivers. Accessible at http://localhost:9093.

*    Grafana: An open-source analytics and data visualization platform. Accessible at http://localhost:3000.

*    NodeExporter: An exporter for Prometheus that exposes hardware and operating system metrics for *NIX systems.

*    nodeCertExporter: An exporter for Prometheus that  metrics.

* Also contain example ca-cert [ `google ca-cert` ] for nodeCertExporter. 


1.  Clone the repository:
    ```
    git clone https://github.com/DevOpsGyus/nodeCertExporter.git
    ```
2. Change into the repository directory:
    ```
    cd nodeCertExporter
    ```
3. Start the services:
    ```
    docker-compose up -d
    ```
4.   Access Grafana:
     
     The Grafana web interface is accessible at http://localhost:3000. The default credentials are admin/admin.

5. Add data sources:

    In Grafana, add a Prometheus data source by going to the "Data Sources" section and clicking on "Add data source". Use http://prometheus:9090 as the URL.

6. Import Dashboards:

    In Grafana, go to the "Dashboards" section and import the desired dashboards.

    * Example dashboards refer to  ` nodeCertExpoter.json `
 #
 ## Stopping the services

* To stop the services, run the following command from the repository directory:

    ```
    docker-compose down
    ```
#
## Grafana Dashboard

![nodeCertExporter ](https://user-images.githubusercontent.com/55613373/216787334-5735b869-820a-42d9-9259-662aa00e8e49.jpg)

#
## Contributions
* Contributions are welcome! If you have any suggestions or bug reports, please open an issue on the GitHub repository.
#
## License
* `nodeCertExporter` is released under the MIT License.
