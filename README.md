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
    docker run -p 9117:9117 
    ```

## Grafana Dashboard
* [nodeCertExporter](https://grafana.com/dashboards/) dashboard hosted at [grafana.com](https://grafana.com).

## Contributions
* Contributions are welcome! If you have any suggestions or bug reports, please open an issue on the GitHub repository.

## License
* Node Cert Exporter is released under the MIT License.