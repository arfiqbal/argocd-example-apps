local params = import 'params.libsonnet';

{
    "apiVersion": "v1",
    "kind": "Service",
    "metadata": {
        "name": params.name + "123"
    },
    "spec": {
        "ports": [
        {
            "port": params.servicePort,
            "targetPort": params.containerPort
        }
        ],
        "selector": {
        "app": params.name
        },
        "type": params.type
    }
}
