# Node Cert Exporter

`nodeCertExporter` exporter for x509 certificates.`nodeCertExporter` will parse SSL certificates directories recursively and expose their expiry as a Prometheus metric at `/metrics`. It can run on `Docker`.

* *This project is improvement of node-cert-expoter image by [amimof/node-cert-exporter](https://github.com/amimof/node-cert-exporter)*

#
## Features

* Retrieve SSL/TLS certificate information all directories.
* Export certificates to nodeCertExpoter.

## Usage
To install the Node Cert Exporter, follow these steps:

* ### 
    ```
    docker run -p 9117:9117 thedevopsgyus/node-cert-exporter
    ```
## Using Docker Compose 
 
 Complete monitoring stack composed of `Prometheus`, `Alertmanager`, `Grafana` , `NodeExporter` and `nodeCertExporter`. 
 
  

* ### 
    ```
    docker compose up
    ```
Also contain example ca-cert [ `google ca-cert` ] for nodeCertExporter. 
## Grafana Dashboard
* [nodeCertExporter](https://grafana.com/dashboards/) dashboard hosted at [grafana.com](https://grafana.com).

![grafanaDashboard](screenshot/nodeCertExporter.png?raw=true "nodeCertExporter")
## Contributions
* Contributions are welcome! If you have any suggestions or bug reports, please open an issue on the GitHub repository.

## License
* `nodeCertExporter` is released under the MIT License.